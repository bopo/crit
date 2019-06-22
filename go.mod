module github.com/bopo/crit

require (
	github.com/inconshreveable/mousetrap v1.0.0 // indirect
	github.com/sirupsen/logrus v1.4.1
	github.com/spf13/cobra v0.0.3
	github.com/spf13/viper v1.3.2
)

replace (
	cloud.google.com/go => github.com/googleapis/google-cloud-go v0.26.0

	golang.org/x/crypto => github.com/golang/crypto v0.0.0-20181203042331-505ab145d0a9
	golang.org/x/lint => github.com/golang/lint v0.0.0-20180702182130-06c8688daad7
	golang.org/x/net => github.com/golang/net v0.0.0-20181011144130-49bb7cea24b1
	golang.org/x/oauth2 => github.com/golang/oauth2 v0.0.0-20180821212333-d2e6202438be
	golang.org/x/sync => github.com/golang/sync v0.0.0-20180314180146-1d60e4601c6f
	golang.org/x/sys => github.com/golang/sys v0.0.0-20180830151530-49385e6e1522
	golang.org/x/text => github.com/golang/text v0.3.0
	golang.org/x/tools => github.com/golang/tools v0.0.0-20180828015842-6cd1fcedba52

	google.golang.org/appengine => github.com/golang/appengine v1.1.0
	google.golang.org/genproto => github.com/google/go-genproto v0.0.0-20180817151627-c66870c02cf8
	google.golang.org/grpc => github.com/grpc/grpc-go v1.16.0
)
