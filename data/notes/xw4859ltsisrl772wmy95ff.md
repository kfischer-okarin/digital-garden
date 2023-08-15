# In-Memory r2d2 Pool

Made in collaboration with Bing

```rs
use r2d2::{ManageConnection, Pool};
use std::collections::HashMap;
use std::sync::{Arc, Mutex};

// - `Mutex` type provides thread-safe access to the data.
//   Since r2d2 allows multiple threads to use the same connection pool, and each connection may be used by different
//   threads at different times, it is important to ensure that concurrent access to the data does not cause data races
//   or corruption. The Mutex type provides a lock-based synchronization mechanism that ensures only one thread can
//   access the data at a time.
// - The `Arc` provides shared ownership of the data.
//   Since r2d2 allows connections to be cloned and returned to the pool when they are dropped, it is important to
//   ensure that the data is not dropped prematurely when one of the clones goes out of scope. The Arc type provides a
//   reference-counted pointer that keeps track of how many owners there are for the data and only drops it when there
//   are no more owners left.
type Data = Arc<Mutex<HashMap<String, String>>>;

// A struct that implements ManageConnection for Data
struct DataManager {
    data: Data,
}

impl DataManager {
    fn new() -> Self {
        DataManager {
            data: Arc::new(Mutex::new(HashMap::new())),
        }
    }
}

#[derive(Debug)]
enum ConnectionError {
    LockError,
}

impl std::fmt::Display for ConnectionError {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        match self {
            ConnectionError::LockError => write!(f, "LockError"),
        }
    }
}

impl std::error::Error for ConnectionError {}

impl ManageConnection for DataManager {
    type Connection = Data;
    type Error = ConnectionError;

    fn connect(&self) -> Result<Self::Connection, Self::Error> {
        Ok(self.data.clone())
    }

    // Check if the connection is valid by trying to lock it
    fn is_valid(&self, conn: &mut Self::Connection) -> Result<(), Self::Error> {
        match conn.lock() {
            Ok(_) => Ok(()),
            Err(_e) => Err(ConnectionError::LockError),
        }
    }

    // Do nothing when the connection is recycled
    fn has_broken(&self, _conn: &mut Self::Connection) -> bool {
        false
    }
}

// A function that creates a connection pool
fn create_pool() -> Pool<DataManager> {
    // Create a pool using the custom manager
    Pool::builder()
        .max_size(10)
        .build(DataManager::new())
        .unwrap()
}
```

- `Mutex` type provides thread-safe access to the data
  Since r2d2 allows multiple threads to use the same connection pool, and each connection may be used by different
  threads at different times, it is important to ensure that concurrent access to the data does not cause data races or
  corruption. The Mutex type provides a lock-based synchronization mechanism that ensures only one thread can access the
  data at a time.
- The `Arc<Mutex<HashMap<String, String>>>` type wraps the Mutex in an Arc to provide shared ownership of the data. Since r2d2 allows connections to be cloned and returned to the pool when they are dropped, it is important to ensure that the data is not dropped prematurely when one of the clones goes out of scope. The Arc type provides a reference-counted pointer that keeps track of how many owners there are for the data and only drops it when there are no more owners left.

These choices allow us to implement a simple and safe in-memory connection manager for r2d2 that can handle concurrent and dynamic usage patterns.
