# Actions for running Yarn Command in subdirectories

Other yarn actions weren't able to receive context, so I created this.

```
action "client-dependencies" {
  uses = "jphenow/yarn-actions@master"
  args = ["./client/", "install"]
}

action "client-build" {
  uses = "jphenow/yarn-actions@master"
  needs = "client-dependencies"
  args = ["./client/", "run", "build"]
}

action "server-dependencies" {
  uses = "jphenow/yarn-actions@master"
  needs = "client-build"
  args = ["./server/", "install"]
}

action "server-build" {
  uses = "jphenow/yarn-actions@master"
  needs = "server-dependencies"
  args = ["./server/", "run", "build"]
}
```
