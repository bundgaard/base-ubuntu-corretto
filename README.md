# What is this

Simple, yet efficient Ubuntu (20.04) with Amazon Corretto installed, available in 1.8.0, 11, 15 using build arguments

# Build arguments

It is possible to change the version installed by using build args

``` bash
docker build \
    --rm \
    --compress \
    --build-arg JAVA_VERSION=1.8.0 \
    -t corretto:1.8.0 \
    .
```
