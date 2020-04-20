# temporary test script

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
