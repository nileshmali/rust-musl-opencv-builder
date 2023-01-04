FROM rust:1.66.0-bullseye

RUN apt-get update \
  && apt-get -y install --no-install-recommends libopencv-dev clang libclang-dev libprotobuf-dev protobuf-compiler \
  && rm -rf /var/lib/apt/lists/*

RUN cargo install cargo-chef --locked