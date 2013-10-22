# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'umlautify/version'

Gem::Specification.new do |spec|
  spec.name          = "umlautify"
  spec.version       = Umlautify::VERSION
  spec.authors       = ["Tony Zanella"]
  spec.email         = ["tony.zanella@gmail.com"]
  spec.description   = %q{Add umlauts to everything!}
  spec.summary       = %q{If a character can be an umlaut, it will be.}
  spec.homepage      = "https://github.com/amz4f/umlautify"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
