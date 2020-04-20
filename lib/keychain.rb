require_relative 'keychain/utils'

class Keychain

  extend KeychainUtils

  # TODO: finish and refactor this

  def self.create_transaction(amount:, address:, outputs:, priv_key:)
    public_key = priv_key.pub.htb

    # TODO: wait for output to be confirmed
    # return an error that ends up retriggering the payment process afterwards
    output = outputs[0]
    prev_tx_output = output.f "script"
    prev_tx_output_index = 1 # TODO: spot the right output to use #output-selection #utxos-selection

    prev_tx_id  = output.f "tx_id"
    prev_tx_raw = output.f "tx_raw"
    raise output.inspect
    prev_tx = Bitcoin::Protocol::Tx.new prev_tx_raw.htb

    tx = Bitcoin::Protocol::Tx.new
    tx_in = Bitcoin::Protocol::TxIn.from_hex_hash prev_tx_id, prev_tx_output_index
    tx_out = Bitcoin::Protocol::TxOut.value_to_address amount, address
    tx_out = Bitcoin::Protocol::TxOut.value_to_address amount, address
    tx.add_in tx_in
    tx.add_out tx_out

    sig_hash = tx.signature_hash_for_input 0, prev_tx
    signature = priv_key.sign sig_hash
    script_sig = Bitcoin::Script.to_signature_pubkey_script signature, public_key
    tx.in[0].script_sig = script_sig

    verify_tx = Bitcoin::Protocol::Tx.new tx.to_payload
    puts "Verify TX:"
    p verify_tx.verify_input_signature 0, prev_tx

    serializedTX = tx.to_payload.unpack("H*")[0]
    puts "TX serialized:"
    p serializedTX

    serializedTX
  end

  # TODO: refactor this

  def self.generate_p2sh_signature(unlocking_script:, address:, amount:, prev_tx:, priv_key:)
    puts "unlocking_script:"
    pp unlocking_script.unpack("H*")[0]

    sig = Bitcoin.sign_data priv_key, unlocking_script # fulfill p2sh tx
    puts "sig:"
    pp sig.unpack("H*")[0]

    public_key_hex = [ priv_key.public_key_hex ].pack("H*")
    Bitcoin::Script.to_signature_pubkey_script sig, public_key_hex
  end

end
