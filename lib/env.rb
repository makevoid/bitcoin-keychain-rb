# application environment

require 'pp'
require 'json'
require 'net/http'
require 'bundler'
Bundler.require :default

PATH = File.expand_path "../..", __FILE__

# require libraries

API_HOST = "https://api.blockcypher.com/v1/btc/main"
API_HOST_LIVE = "https://live.blockcypher.com/btc"

require_relative 'monkeypatches'
require_relative 'utils'
require_relative 'api_get'
require_relative 'api_post'
require_relative 'utxos'
require_relative 'errors'
require_relative 'keychain'
require_relative 'network'

include Utils

STATE = {
  private_key: NullPrivateKey.new
}

require_relative 'config'
