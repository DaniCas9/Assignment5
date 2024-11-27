# Builder stage
FROM alpine AS builder
COPY data.txt /tmp/

# Final stage
FROM fedora AS final
COPY --from=builder /tmp/data.txt /

