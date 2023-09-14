module github.com/bigwhite/hellomodule

go 1.16

require (
	github.com/gin-gonic/gin v1.9.1
	github.com/valyala/fasthttp v1.48.0
	go.uber.org/zap v1.24.0
	gopkg.in/ini.v1 v1.67.0 // indirect
)

replace (
		github.com/bigwhite/hellomodule/pkg/setting => ~/cos_entrust_server/hellomodule/pkg/setting
		github.com/bigwhite/hellomodule/conf    	  => ~/cos_entrust_server/hellomodule/pkg/conf
		github.com/bigwhite/hellomodule/middleware  => ~/cos_entrust_server/hellomodule/middleware
		github.com/bigwhite/hellomodule/models 	  => ~/cos_entrust_server/hellomodule/models
		github.com/bigwhite/hellomodule/routers 	  => ~/cos_entrust_server/hellomodule/routers
)
