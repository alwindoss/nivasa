package pplmgr

import (
	"github.com/alwindoss/nivasa/internal/pplmgr/api"
	"github.com/gin-gonic/gin"
)

func Run() {
	engine := createEngine()
	registerHandlers(engine)
	engine.Run(":8080")
}

func createEngine() *gin.Engine {
	engine := gin.New()
	return engine
}

func registerHandlers(e *gin.Engine) {
	e.POST("/", api.Create)
	e.GET("/", api.Fetch)
}
