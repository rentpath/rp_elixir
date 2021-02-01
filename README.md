# rp_elixir

## Building a new version

1. Download the source code from https://github.com/elixir-lang/elixir/releases/tag/v1.11.2.
2. Compute the SHA256 digest for the `.tar.gz` file with `sha256sum`. You can also use `shasum -a 256 <filename>` on a Mac.
3. Update `ELIXIR_VERSION` and `ELIXIR_VERSION_SHA` in `Dockerfile`.
4. Update the base Erlang version in the `FROM` statement, if appropriate.
5. Run `docker build -t rentpath/rp_elixir:v1.11.2-alpine-otp-23.2.3 -t rentpath/rp_elixir:latest .`
6. Run `docker push rentpath/rp_elixir:v1.11.2-alpine-otp-23.2.3`
7. Run `docker push rentpath/rp_elixir:latest`
