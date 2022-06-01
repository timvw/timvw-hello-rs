# timvw-hello-rs

Repository to experiment with github actions and rust

Test the workflow:

Local development is often faster by using [https://github.com/nektos/act](https://github.com/nektos/act)

```bash
act workflow_dispatch -e sample.event 
```

Create a release:

```bash
gh workflow run draft_release.yml -f version=0.1.13
```

Build container manually:

```bash
docker build . --build-arg CRATE_VERSION=0.1.13 -t timvw/timvw-hello-rs:latest
```

Tap this repository:

```bash
brew tap timvw/tap
brew install timvw-hellors-bin
```