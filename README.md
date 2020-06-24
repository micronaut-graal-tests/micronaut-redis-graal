# Micronaut Redis GraalVM

Test application for Micronaut Redis and GraalVM.

To run Redis in Docker:
```
docker run -it --rm -p 6379:6379 redislabs/redisearch:1.6.13
```

To test the application:

```
curl localhost:8080/set
curl localhost:8080/get
curl localhost:8080/command-set
curl localhost:8080/command-get
```
