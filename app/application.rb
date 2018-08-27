class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if path.match(/items/)
      item = req.params["item"]
      resp.write "#{item.price}"
    else
      resp.write "Item not found"
      resp.status 400
    end

    resp.finish
  end

end
