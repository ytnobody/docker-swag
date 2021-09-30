package main

// @title Example API
// @version 1.0
// @description It's an example API
// @tag.name pub
// @tag.description public api

// @host localhost:7733
// @BasePath /
// @schemes http

// ResponseMessage Example Response Struct
type ResponseMessage struct {
	Message string
}

func main() {
}

// HelloWorld Show Hello World
// @Summary Show Hello World
// @Description One of example API
// @Router /hello/{things} [get]
// @Tags pub
// @Accept */*
// @Param things path string true "some string"
// @Produce json
// @Success 200 {object} ResponseMessage
// @Failure 400 {object} ResponseMessage
// @Failure 500 {object} ResponseMessage
func HelloWorld() {
}
