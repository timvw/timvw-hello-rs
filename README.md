# Hello-rs

Repository to experiment with github actions and rust

Create a release:

```bash
gh workflow run release.yml -f version=0.1.13
```

Build container manually:

```bash
docker build . --build-arg CRATE_VERSION=0.1.13 -t timvw/hello-rs:latest
```

Tap this repository:

```bash
brew tap timvw/hello-rs https://github.com/timvw/hello-rs.git
brew install timvw/hello-rs/hello-rs
```