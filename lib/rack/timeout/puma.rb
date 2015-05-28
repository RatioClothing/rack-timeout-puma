require 'rack-timeout'

class Rack::Timeout::Puma
  def initialize(app, options = {})
    @app, @options = app, options
  end

  class Error < StandardError; end

  def call(env)
    @app.call(env)
  rescue Rack::Timeout::Error => e
    raise Error, "Original Error: #{e.class.inspect}, #{e.message.inspect}, #{e.backtrace.inspect}"
  end
end
