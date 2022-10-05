FROM rust:1.64-alpine3.16

RUN apk update \
  && apk add --no-cache ca-certificates tzdata \
  opencv-dev musl-dev clang-dev clang-libs llvm \
  && rm -rf /var/cache/apk/*