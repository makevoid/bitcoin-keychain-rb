module Utils

  def build_url(api_url:, query: nil, host: API_HOST)
    query = "?#{qs hash: query}" if query
    url = "#{api_url}#{query}"
    URI "#{host}/#{url}"
  end

  def qs(hash:)
    hash.to_a.map { |x| "#{x[0]}=#{x[1]}" }.join "&"
  end

end
