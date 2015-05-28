Basically, we catch the Exception raised by Rack::Timeout and convert it to a StandardError so that Puma workers aren't killed.

See <https://github.com/heroku/rack-timeout/issues/76> for a better description of the problem.

Basic Usage
-----------

### Rails apps

```ruby
# Gemfile
gem "rack-timeout-puma"
```

That's all that's required! `rack-timeout` will be included automatically and the middleware will be inserted in the correct location.

### Sinatra and other Rack apps

```ruby
# config.ru
require "rack-timeout-puma"
use Rack::Timeout
use Rack::Timeout::Puma
```

---
Copyright © 2015 KeyMe, Inc, released under the MIT license  
<http://github.com/keyme/rack-timeout-puma>
