# TODO: convert these to refinements if you want to make this a proper importable library/gem

class Hash
  alias :f :fetch
end

module SupportUtils
  def symbolize_keys(hash)
    hash.transform_keys &:to_sym # ruby 2.5 specific, for previous versions, use: `hash.map { |k, v| [k.to_sym, v] }.to_h`
  end
end

include SupportUtils
