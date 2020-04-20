class TXErrorOutputSpent < RuntimeError; end

class Network

  extend ApiPost

  def self.push(tx:)
    url = build_url api_url: "txs/push"
    resp = api_post url, tx: tx
    boom! err: resp["error"] if resp["error"]
    resp
  end

  # TODO: implement proper error messages
  def self.boom!(err:)
    if err.include? "has already been spent"
      raise "Error, no outputs to spend or transaction already submitted!"
    end
    raise "Error pushing TX - ERROR: #{err.inspect}"
  end

end
