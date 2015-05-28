require 'rack/timeout/puma'

if defined?(Rails) && [3,4].include?(Rails::VERSION::MAJOR)
  class Rack::Timeout::Railtie < Rails::Railtie
    initializer('rack-timeout-puma.prepend') { |app| app.config.middleware.insert_before(Rack::Timeout, Rack::Timeout::Puma) }
  end
end
