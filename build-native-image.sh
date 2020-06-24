./gradlew assemble
native-image --no-server --no-fallback --class-path build/libs/micronaut-redis-graal-*-all.jar
