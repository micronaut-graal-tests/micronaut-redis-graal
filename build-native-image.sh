./gradlew assemble
native-image --no-fallback --class-path build/libs/micronaut-redis-graal-*-all.jar
