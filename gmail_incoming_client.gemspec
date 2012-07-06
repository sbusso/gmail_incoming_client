# -*- encoding: utf-8 -*-
require File.expand_path('../lib/gmail_incoming_client/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Stéphane Busso"]
  gem.email         = ["stephane.busso@gmail.com"]
  gem.description   = %q{Simple client to connect to API}
  gem.summary       = %q{Simple client to connect to API}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "gmail_incoming_client"
  gem.require_paths = ["lib"]
  gem.version       = GmailIncomingClient::VERSION
  gem.add_development_dependency "rspec"
  gem.add_dependency "patron"
  gem.add_dependency "json"


end
