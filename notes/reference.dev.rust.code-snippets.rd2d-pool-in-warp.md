---
id: 6vegh9htw67ey27q2u77099
title: rd2d Pool in Warp
desc: ''
updated: 1679504908059
created: 1679504585765
---
# rd2d Pool in Warp

```rs
// type PoolType = Pool<ManagerType>

fn with_pool(pool: PoolType) {
   warp::any().map(move || pool.clone())
}

#[tokio::main]
async fn main() {
    let pool = create_pool();

    // Pool must be cloned everytime but the last time
    let api1 = warp::path("data")
        .and(with_pool(pool.clone()))
        .and_then(|pool: Pooltype| async move {
            let conn = pool.get().unwrap();
            // Do something
        });
    let api2 = warp::path("data2")
        .and(with_pool(pool))
        .and_then(|pool: Pooltype| async move {
            let conn = pool.get().unwrap();
            // Do something
        });

    warp::serve(api1.or(api2))
        .run(([127, 0, 0, 1], 3030))
        .await;
}
```
