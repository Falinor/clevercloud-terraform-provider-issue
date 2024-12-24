## How to test

```shell
terraform apply
```

Fails with the following error:
```
clevercloud_nodejs.api: Creating...
╷
│ Error: failed to push to clever remote
│ 
│   with clevercloud_nodejs.api,
│   on main.tf line 1, in resource "clevercloud_nodejs" "api":
│    1: resource "clevercloud_nodejs" "api" {
│ 
│ command error on refs/heads/main: hook declined
╵
```

It is due to the `main` branch being pushed to the CleverCloud repository which has a `master` branch, and does not allow pushing a custom branch.
It can be verified by typing the following:
```shell
git push clever main

Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
remote: Error: You tried to push to a custom branch. This is not allowed.
remote: error: hook declined to update refs/heads/main
To git+ssh://push-n3-par-clevercloud-customers.services.clever-cloud.com/app_49e7e4e3-ebaa-4d1c-8d2b-d4b048e03037.git
 ! [remote rejected] main -> main (hook declined)
error: failed to push some refs to 'git+ssh://push-n3-par-clevercloud-customers.services.clever-cloud.com/app_49e7e4e3-ebaa-4d1c-8d2b-d4b048e03037.git'
```

To fix it:
```shell
git push clever main:master
```

We would want this behavior using the Terraform CleverCloud provider :)
