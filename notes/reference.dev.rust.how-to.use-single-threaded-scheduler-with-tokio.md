---
id: xuhhavzgo6ie8ct8o2tbzvh
title: Use Single Threaded Scheduler with Tokio
desc: ''
updated: 1679503935777
created: 1679503931516
---
```rs
use warp::Filter;

// A simple hello world endpoint
async fn hello_world() -> Result<impl warp::Reply, warp::Rejection> {
    Ok("Hello, world!")
}

// Use tokio::main with current_thread flavor
#[tokio::main(flavor = "current_thread")]
async fn main() {
    // Create a route for GET /
    let route = warp::get().and_then(hello_world);

    // Run the server
    warp::serve(route).run(([127, 0, 0, 1], 3030)).await;
}
```
