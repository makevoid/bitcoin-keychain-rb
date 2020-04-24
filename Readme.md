# bitcoin-keychain

A simple but effective bitcoin wallet (or keychain) written in ruby, using the magical `bitcoin-ruby` library as a base.

*Status:* Alpha

#### Features:

- Generate a private key via `bitcoin-ruby`
- Gather UTXOs via the `blockcypher.com` block explorer API
- Create and sign a transaction transaction locally
- Push transactions via the block explorer API

### Target API

(current target api)

```rb


require_relative "lib/env"
require_relative "lib/transaction"

def pay_address(address, amount:)
  puts "Paying address: #{address.inspect}"

  # 1 mbtc = 10 USDs
  # 10_000 sats = 1 USD (10k USD / BTC)
  address, tx_status = Transaction.send_transaction address: address, amount: amount
  {
    address: address,
    tx_status: tx_status,
  }
end

resp = pay_address DEFAULT_ADDRESS, amount: 10_000
puts "Address #{resp.f address} paid"
puts "TX status: #{tx_status}"

```

#### Soon:

- Support for multiple `getUTXOs` and `pushTX` block explorer services
- Generate an HD key via `money-tree`


Hope you'll like it,

@makevoid
