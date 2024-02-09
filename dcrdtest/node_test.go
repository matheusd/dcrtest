package dcrdtest

import (
	"os"
	"path/filepath"
	"runtime/pprof"
	"testing"
	"time"

	"matheusd.com/testctx"
)

// TestStopsAfterFailedStart asserts that when a harness node cannot start due
// to some erroneous configuration, it cleanly stops and returns with an error.
func TestStopsAfterFailedStart(t *testing.T) {

	// Keep track of how many goroutines are running before the test
	// happens.
	beforeCount := pprof.Lookup("goroutine").Count()

	nodeTestData := t.TempDir()
	certFile := filepath.Join(nodeTestData, "rpc.cert")
	keyFile := filepath.Join(nodeTestData, "rpc.key")
	if err := genCertPair(certFile, keyFile); err != nil {
		t.Fatal(err)
	}

	// Use an invalid mining address, which will cause dcrd to fail to start.
	extraArgs := []string{
		"--simnet",
		"--debuglevel=trace",
		"--miningaddr=this-is-an-invalid-addr",
	}
	config, err := newConfig(nodeTestData, certFile, keyFile, extraArgs)
	if err != nil {
		t.Fatal(err)
	}

	// Create the dcrd binary for this test. Clean it up after the test.
	config.pathToDCRD, err = buildDcrd()
	defer os.RemoveAll(filepath.Dir(config.pathToDCRD))
	if err != nil {
		t.Fatal(err)
	}

	// Create the node.
	node, err := newNode(config, nodeTestData, 999)
	if err != nil {
		t.Fatal(err)
	}

	// Start the node with a 3 second timeout for start. This should error.
	ctx := testctx.WithTimeout(t, time.Second*3)
	err = node.start(ctx)
	if err == nil {
		t.Fatal(err)
	}

	// There should not be any new goroutines running.
	prof := pprof.Lookup("goroutine")
	afterCount := prof.Count()
	if afterCount != beforeCount {
		prof.WriteTo(os.Stderr, 1)
		t.Fatalf("Unexpected nb of active goroutines: got %d, want %d",
			afterCount, beforeCount)
	}
}
