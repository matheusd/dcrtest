// Copyright (c) 2023 The Decred developers
// Use of this source code is governed by an ISC
// license that can be found in the LICENSE file.
package dcrdtest

import (
	"sync"

	"github.com/decred/slog"
)

func log() slog.Logger {
	mtx.Lock()
	res := innerLog
	mtx.Unlock()
	return res
}

// log is a logger that is initialized with no output filters.  This
// means the package will not perform any logging by default until the caller
// requests it.
// The default amount of logging is none.
var innerLog = slog.Disabled
var mtx sync.Mutex

// UseLogger uses a specified Logger to output package logging info.
func UseLogger(logger slog.Logger) {
	mtx.Lock()
	innerLog = logger
	mtx.Unlock()
}
