# bitcoin-keychain

A simple but effective bitcoin wallet (or keychain) written in ruby, using the magical `bitcoin-ruby` library as a base.

*Status:* Alpha

#### Features:

- Generate a private key via `bitcoin-ruby`
- Gather UTXOs via the `blockcypher.com` block explorer API
- Create and sign a transaction transaction locally
- Push transactions via the block explorer API

#### Soon:

- Support for multiple `getUTXOs` and `pushTX` block explorer services
- Generate an HD key via `money-tree`


Hope you'll like it,

@makevoid
