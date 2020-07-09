FROM rust:1.41.0 as build-env
WORKDIR /app
ADD . /app
#RUN cargo run
RUN cargo build --release
#RUN cargo install ripgrep

FROM gcr.io/distroless/cc
COPY --from=build-env /app/target/release/hello-world-distroless /
CMD ["./hello-world-distroless"]
