FROM oracle/graalvm-ce:20.1.0-java8 as graalvm
RUN gu install native-image

COPY . /home/app/redis
WORKDIR /home/app/redis

RUN native-image --no-server -cp build/libs/redis-*-all.jar

FROM frolvlad/alpine-glibc
RUN apk update && apk add libstdc++
EXPOSE 8080
COPY --from=graalvm /home/app/redis/redis /app/redis
ENTRYPOINT ["/app/redis"]
