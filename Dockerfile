FROM golang:1.16.13-alpine3.15  AS build-env
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN CGO_ENABLED=0 GOOS=linux go build -o app .

FROM alpine:latest AS production
COPY --from=build-env /app .
CMD ["./app"]
