# app configuration

# uses a private key from file instead than from string, ideally an env variable should override this behaviour for deployment via containers.
LoadLocalPrivateKey = -> {
  # TODO: use default path by default but put a config parameter for the user to specify the path, otherwise print a notice message
  # default_path = File.expand_path "~/.bitcoin_keychain_rb_private_key"
  # key = File.read default_path
  path = File.expand_path "#{PATH}/.private_key" # WIF format
  key  = File.read path
  key.strip
}

DEFAULT_PRIVATE_KEY = LoadLocalPrivateKey.()
# TODO: derive address from private key
DEFAULT_ADDRESS = "1FhYxR9wCwdBKTuMUaYsbZxr8fiJDYYEQ8"
