class Transaction

  def self.send_transaction(address:, amount:)
    utxos = UTXOs.get address: address

    amount = 10_000 # 10k satoshis - 0.1mbtc

    priv_key = load_default_private_key
    tx = Keychain.create_transaction amount: amount, address: address, outputs: utxos, priv_key: priv_key
    status = Network.push tx: tx
    puts "PUSH TX (status):"
    p status
    status
  end

  def self.load_default_private_key
    private_key = ENV["PRIVATE_KEY"] || DEFAULT_PRIVATE_KEY
    Bitcoin::Key.from_base58 private_key
  end

end
