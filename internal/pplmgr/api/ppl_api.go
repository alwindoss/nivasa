package api

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func Create(c *gin.Context) {

}

func Fetch(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, "Hello you are fetch the data")
}
