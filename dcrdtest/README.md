dcrdtest
=======

[![Build Status](https://github.com/decred/dcrtest/workflows/Build%20and%20Test/badge.svg)](https://github.com/decred/dcrtest/actions)
[![ISC License](https://img.shields.io/badge/license-ISC-blue.svg)](http://copyfree.org)
[![Doc](https://img.shields.io/badge/doc-reference-blue.svg)](https://pkg.go.dev/github.com/decred/dcrtest/dcrdtest)

Package dcrdtest provides a dcrd-specific RPC testing harness crafting and
executing integration tests by driving a `dcrd` instance via the `RPC`
interface. Each instance of an active harness comes equipped with a simple
in-memory HD wallet capable of properly syncing to the generated chain,
creating new addresses, and crafting fully signed transactions paying to an
arbitrary set of outputs. 

This package was designed specifically to act as an RPC testing harness for
`dcrd`. However, the constructs presented are general enough to be adapted to
any project wishing to programmatically drive a `dcrd` instance of its
systems/integration tests. 

## Installation and Updating


## License

Package dcrdtest is licensed under the [copyfree](http://copyfree.org) ISC
License.

