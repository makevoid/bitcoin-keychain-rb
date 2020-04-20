require_relative "../tmp/tx_fixture"

class UTXOs # unspent-transaction-outputs

  extend ApiGet

  # get unspent outputs of a specific address
  def self.get(address:)
    api_url = "addrs/#{address}/full"
    query = { limit: 5, includeHex: true }
    url = build_url api_url: api_url, query: query
    resp = tx_fixture || api_get(url)  # mocking it for dev speed
    boom! err: resp["error"] if resp["error"]
    utxos = extract_utxos resp
    utxos
  end

  def self.get_outputs(tx:, address:)
    tx = symbolize_keys tx
    tx_outputs = tx.f :outputs
    tx_outputs.each{ |out| out["tx_id"] = tx.f(:hash) }
    tx_outputs.each{ |out| out["tx_raw"] = tx.f(:hex) }
    tx_outputs.select!{ |out| out["value"] > 2000 }
    tx_outputs.select!{ |out| out["addresses"] == [address] }
    tx_outputs
  end

  def self.extract_utxos(address_info)
    address_info = symbolize_keys address_info
    address = address_info.f :address
    puts "address: #{address} - balance: #{address_info.f :balance} - unconfirmed_balance: #{address_info.f :unconfirmed_balance} - n_tx: #{address_info.f :n_tx}"
    txs = address_info.f :txs
    outputs = txs.map do |tx, idx|
      get_outputs tx: tx, address: address
    end.flatten
    outputs
  end

  def self.tx_fixture
    TX_FIXTURE if ENV["FIXTURES"] == "1"
  end

  def self.boom!(err:)
    raise "Error getting address details (UTXOs) - ERROR: #{err.inspect}"
  end

end
