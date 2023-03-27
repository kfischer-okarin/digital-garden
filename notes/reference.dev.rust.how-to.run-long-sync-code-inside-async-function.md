---
id: 2042nkzniusv5g3r54e9ryh
title: Run Long Sync Code inside Async Function
desc: ''
updated: 1679503424660
created: 1679503194829
---
# Run Long Sync Code inside Async Function

Use `spawn_blocking` on Tokio runtime.

```rs
use tokio::task;

// A long running sync function
fn fib(n: u64) -> u64 {
    match n {
        0 => 1,
        1 => 1,
        n => fib(n - 1) + fib(n - 2),
    }
}

// An async wrapper around the sync function
async fn async_fib(n: u64) -> u64 {
    // Spawn a blocking task that calls the sync function
    let result = task::spawn_blocking(move || fib(n)).await;
    result.unwrap()
}

#[tokio::main]
async fn main() {
    let n = async_fib(10).await;
    println!("fib(10) = {}", n);
}
```

- `spawn_blocking` is intended for non-async operations that eventually finish on their own.
- if you are using the single threaded runtime, spawn_blocking will still spawn additional threads for blocking
operations. The current-thread scheduler’s single thread is only used for asynchronous code¹.

Source: Conversation with Bing, 3/22/2023
(1) spawn_blocking in tokio::task - Rust. https://docs.rs/tokio/latest/tokio/task/fn.spawn_blocking.html Accessed 3/22/2023.
