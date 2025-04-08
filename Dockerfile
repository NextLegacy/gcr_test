FROM denoland/deno:alpine AS builder

RUN apk add --no-cache libstdc++

WORKDIR /app

COPY deno.json ./
RUN deno cache deno.json

COPY . .
RUN deno task build

FROM denoland/deno:alpine

WORKDIR /app

COPY --from=builder /app/build ./build
COPY --from=builder /app/deno.docker.json ./deno.json

CMD ["deno", "run", "--allow-env", "--allow-net", "--allow-read", "--node-modules-dir", "build/index.js"]