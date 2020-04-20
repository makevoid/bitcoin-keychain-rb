class PostRequestFailedError < RuntimeError; end

module ApiPost

  def api_post(url, params)
    http = Net::HTTP.new url.host, 443
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    req = Net::HTTP::Post.new url.request_uri, { 'Content-Type' => 'application/json' }
    req.body = params.to_json
    resp = http.request req
    body = resp.read_body
    JSON.parse body unless body.empty?
  rescue JSON::ParserError => err
    puts "ERROR"
    p err
    raise PostRequestFailedError
  end

  module_function :api_post

end
