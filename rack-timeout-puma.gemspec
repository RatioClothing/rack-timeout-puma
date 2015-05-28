Gem::Specification.new do |s|
  s.name        = 'rack-timeout-puma'
  s.version     = '0.0.1'
  s.date        = '2015-05-28'
  s.summary     = "Abort requests that take too long on a Puma server"
  s.description = "Abort requests that take too long, but don't murder Puma workers in the process."
  s.authors     = ["Zachary Salzbank"]
  s.email       = 'zach@key.me'
  s.files       = %w(lib/rack-timeout-puma.rb lib/rack/timeout/puma.rb)
  s.homepage    = "http://github.com/keyme/rack-timeout-puma"
  s.license       = 'MIT'

  s.add_runtime_dependency 'rack-timeout', '~> 0.2', '>=0.2.0'
end
