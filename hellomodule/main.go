package main

import (
	"fmt"
	"net/http"

	"github.com/bigwhite/hellomodule/pkg/setting"
	"github.com/bigwhite/hellomodule/routers"
)

func main() {
	router := routers.InitRouter()

	s := &http.Server{
		Addr:           fmt.Sprintf(":%d", setting.HTTPPort),
		Handler:        router,
		ReadTimeout:    setting.ReadTimeout,
		WriteTimeout:   setting.WriteTimeout,
		MaxHeaderBytes: 1 << 20,
	}

	s.ListenAndServe()
}

// package main

// import (
// 	"github.com/valyala/fasthttp"
// 	"go.uber.org/zap"
// )

// var logger *zap.Logger

// func init() {
// 	logger, _ = zap.NewProduction()
// }

// func fastHTTPHandler(ctx *fasthttp.RequestCtx) {
// 	logger.Info("hello, go module", zap.ByteString("uri", ctx.RequestURI()))
// }

// func main() {
// 	fasthttp.ListenAndServe(":8088", fastHTTPHandler)
// }

// package main

// import (
// 	"fmt"
// 	"os"

// 	"gopkg.in/ini.v1"
// )

// func main() {
// 	cfg, err := ini.Load("my.ini")
// 	if err != nil {
// 		fmt.Printf("Fail to read file: %v", err)
// 		os.Exit(1)
// 	}

// 	// 典型读取操作，默认分区可以使用空字符串表示
// 	fmt.Println("App Mode:", cfg.Section("").Key("app_mode").String())
// 	fmt.Println("Data Path:", cfg.Section("paths").Key("data").String())

// 	// 我们可以做一些候选值限制的操作
// 	fmt.Println("Server Protocol:",
// 		cfg.Section("server").Key("protocol").In("http", []string{"http", "https"}))
// 	// 如果读取的值不在候选列表内，则会回退使用提供的默认值
// 	fmt.Println("Email Protocol:",
// 		cfg.Section("server").Key("protocol").In("smtp", []string{"imap", "smtp"}))

// 	// 试一试自动类型转换
// 	fmt.Printf("Port Number: (%[1]T) %[1]d\n", cfg.Section("server").Key("http_port").MustInt(9999))
// 	fmt.Printf("Enforce Domain: (%[1]T) %[1]v\n", cfg.Section("server").Key("enforce_domain").MustBool(false))

// 	// 差不多了，修改某个值然后进行保存
// 	cfg.Section("").Key("app_mode").SetValue("production")
// 	cfg.SaveTo("my.ini.local")
// }
