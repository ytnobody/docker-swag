# ytnobody/swag

Just provide `swag` from [swaggo/swag](https://github.com/swaggo/swag)

## Usage

1. First, specify swagger with [swaggo's declarative comments format](https://github.com/swaggo/swag#declarative-comments-format) in your `main.go`.
2. Then run below command under your project

```
$ docker run --volume $(pwd):/app --rm -it ytnobody/swag init
```

3. `swagger.yaml`, `swagger.json` and `docs.go` will be generated under `./docs` if swagger spec you specified is valid.