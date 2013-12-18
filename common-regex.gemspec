# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'common_regex/version'

Gem::Specification.new do |spec|
  spec.name          = "common-regex"
  spec.version       = CommonRegex::VERSION
  spec.authors       = ["rocky-jaiswal"]
  spec.email         = ["rocky.jaiswal@gmail.com"]
  spec.description   = %q{Ruby gem inspired by https://github.com/madisonmay/CommonRegex}
  spec.summary       = %q{Use common regex with ease}
  spec.homepage      = "http://rockyj.in"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
