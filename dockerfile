FROM rust:1.83.0-slim AS builder

WORKDIR /usr/src/

COPY . .

RUN cargo build --release

FROM debian:bookworm-slim

WORKDIR /usr/app

COPY --from=builder /usr/src/config /usr/app/config
COPY --from=builder /usr/src/target/release/remarketpro_api-cli /usr/app/remarketpro_api-cli

ENTRYPOINT ["/usr/app/remarketpro_api-cli", "start", "-e", "development", "-b", "0.0.0.0"]