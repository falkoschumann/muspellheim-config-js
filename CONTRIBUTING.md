# Contributing

## Release

1. Run `make bump` to bump minor version of all packages. Set `LEVEL=` to major
   or patch to overwrite default level major.
2. Commit and run `make` to verify build is successful.
3. Tag with pattern `vx.y.z` and push. The packages are published automatically.
