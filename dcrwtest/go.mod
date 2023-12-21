module github.com/decred/dcrtest/dcrwtest

go 1.19

// The following require defines the version of dcrwallet that is built for
// tests of this package and the minimum version used when this package is
// required by a client module (unless overridden in the main module or
// workspace).
require decred.org/dcrwallet/v3 v3.0.0

require (
	github.com/decred/dcrd/chaincfg/v3 v3.2.0
	github.com/decred/dcrd/dcrjson/v4 v4.0.1
	github.com/decred/dcrd/rpcclient/v8 v8.0.0
	github.com/decred/dcrd/wire v1.6.0
	github.com/decred/slog v1.2.0
	github.com/jrick/wsrpc/v2 v2.3.5
	golang.org/x/net v0.9.0
	golang.org/x/sync v0.5.0
	google.golang.org/grpc v1.54.0
	matheusd.com/testctx v0.1.0
)

require (
	decred.org/cspp/v2 v2.1.0 // indirect
	github.com/agl/ed25519 v0.0.0-20170116200512-5312a6153412 // indirect
	github.com/companyzero/sntrup4591761 v0.0.0-20220309191932-9e0f3af2f07a // indirect
	github.com/dchest/siphash v1.2.3 // indirect
	github.com/decred/base58 v1.0.5 // indirect
	github.com/decred/dcrd/addrmgr/v2 v2.0.2 // indirect
	github.com/decred/dcrd/blockchain/stake/v5 v5.0.0 // indirect
	github.com/decred/dcrd/blockchain/standalone/v2 v2.2.0 // indirect
	github.com/decred/dcrd/certgen v1.1.2 // indirect
	github.com/decred/dcrd/chaincfg/chainhash v1.0.4 // indirect
	github.com/decred/dcrd/connmgr/v3 v3.1.1 // indirect
	github.com/decred/dcrd/crypto/blake256 v1.0.1 // indirect
	github.com/decred/dcrd/crypto/ripemd160 v1.0.2 // indirect
	github.com/decred/dcrd/database/v3 v3.0.1 // indirect
	github.com/decred/dcrd/dcrec v1.0.1 // indirect
	github.com/decred/dcrd/dcrec/edwards/v2 v2.0.3 // indirect
	github.com/decred/dcrd/dcrec/secp256k1/v4 v4.2.0 // indirect
	github.com/decred/dcrd/dcrutil/v4 v4.0.1 // indirect
	github.com/decred/dcrd/gcs/v4 v4.0.0 // indirect
	github.com/decred/dcrd/hdkeychain/v3 v3.1.1 // indirect
	github.com/decred/dcrd/rpc/jsonrpc/types/v4 v4.1.0 // indirect
	github.com/decred/dcrd/txscript/v4 v4.1.0 // indirect
	github.com/decred/go-socks v1.1.0 // indirect
	github.com/decred/vspd/client/v2 v2.0.0 // indirect
	github.com/decred/vspd/types/v2 v2.1.0 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/gorilla/websocket v1.5.0 // indirect
	github.com/jessevdk/go-flags v1.5.0 // indirect
	github.com/jrick/bitset v1.0.0 // indirect
	github.com/jrick/logrotate v1.0.0 // indirect
	github.com/klauspost/cpuid/v2 v2.2.5 // indirect
	go.etcd.io/bbolt v1.3.7 // indirect
	golang.org/x/crypto v0.7.0 // indirect
	golang.org/x/sys v0.12.0 // indirect
	golang.org/x/term v0.7.0 // indirect
	golang.org/x/text v0.9.0 // indirect
	google.golang.org/genproto v0.0.0-20230410155749-daa745c078e1 // indirect
	google.golang.org/protobuf v1.30.0 // indirect
	lukechampine.com/blake3 v1.2.1 // indirect
)
