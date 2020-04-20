module ApiGet

  def api_get(url)
    resp = Net::HTTP.get_response url
    body = resp.body
    JSON.parse body
  end

  module_function :api_get

end
