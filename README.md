# rp_elixir

## Building a new version

1. Download the source code from https://github.com/elixir-lang/elixir/releases/tag/v1.9.4 ,
   substituting the desired version in the URL.
2. Compute the SHA256 digest for the `.tar.gz` file with `sha256sum`.
3. Update `ELIXIR_VERSION` and `ELIXIR_VERSION_SHA` in `Dockerfile`.
4. Update the base Erlang version in the `FROM` statement if appropriate.
5. Run `docker build -t rentpath/rp_elixir:v1.9.4-alpine-otp-22 -t rentpath/rp_elixir:latest .`, substituting the desired version in the tag.
6. Run `docker push rentpath/rp_elixir:v1.9.4-alpine-otp-22`, substituting the appropriate tag.
