# timvw-hello-rs

Repository to experiment with github actions and rust

1. Create a draft release:

```bash
gh workflow run draft_release.yml -f version=0.1.86
```

This will result in:
* the creation of release/0.1.86 branch
* the creation of a draft v0.1.86 github release 
* addition of assets (compiled application binaries)  to the draft release

2. Publish the draft release:

```bash
gh release edit --draft=false v0.1.86
```

This will result in:
* the publication of the v0.1.86 github release
* the publication on crates.io
* the publication of a docker container
* the publication of an updated hombrew formula
* the deletion of the release/0.1.86 branch

## Development

Test the workflow:

Local development is often faster by using [https://github.com/nektos/act](https://github.com/nektos/act)

```bash
act workflow_dispatch -e sample.event 
```