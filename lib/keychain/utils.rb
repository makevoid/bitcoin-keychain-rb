module KeychainUtils

  def priv_to_pub(priv_key:)
    [priv_key.public_key_hex].pack 'H*'
  end

  def priv_to_pub_hex(priv_key:)
    priv_key.public_key_hex
  end

  def pub_to_address(pub_key:)
    return unless pub_key.present?
    Bitcoin.pubkey_to_address pub_key
  end

  def derive_address(priv_key:)
    pub_key = priv_to_pub priv_key: priv_key
    pub_to_address pub_key: pub_key
  end

end
