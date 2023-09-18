module github.com/bigwhite/hellomodule

go 1.16

require (
	github.com/bytedance/sonic v1.10.1 // indirect
	github.com/gin-gonic/gin v1.9.1 // indirect
	github.com/go-ini/ini v1.67.0
	github.com/go-playground/validator/v10 v10.15.4 // indirect
	github.com/go-sql-driver/mysql v1.7.1 // indirect
	github.com/jinzhu/gorm v1.9.16 // indirect
	github.com/klauspost/cpuid/v2 v2.2.5 // indirect
	github.com/pelletier/go-toml/v2 v2.1.0 // indirect
	github.com/unknwon/com v1.0.1 // indirect
	golang.org/x/arch v0.5.0 // indirect
	golang.org/x/net v0.15.0 // indirect
	google.golang.org/protobuf v1.31.0 // indirect
	gopkg.in/ini.v1 v1.67.0
)

replace (
	github.com/bigwhite/hellomodule/conf => /cos_entrust_server/hellomodule/pkg/conf
	github.com/bigwhite/hellomodule/e => /cos_entrust_server/hellomodule/e
	github.com/bigwhite/hellomodule/middleware => /cos_entrust_server/hellomodule/middleware
	github.com/bigwhite/hellomodule/models => /cos_entrust_server/hellomodule/models
	github.com/bigwhite/hellomodule/pkg/code => /cos_entrust_server/hellomodule/pkg/code
	github.com/bigwhite/hellomodule/pkg/msg => /cos_entrust_server/hellomodule/pkg/msg
	github.com/bigwhite/hellomodule/pkg/setting => /cos_entrust_server/hellomodule/pkg/setting
	github.com/bigwhite/hellomodule/pkg/util => /cos_entrust_server/hellomodule/pkg/util
	github.com/bigwhite/hellomodule/routers => /cos_entrust_server/hellomodule/routers
)
