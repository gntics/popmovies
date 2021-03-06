# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'popmovies/version'

Gem::Specification.new do |spec|
  spec.name          = "popmovies"
  spec.version       = Popmovies::VERSION
  spec.authors       = ["gntics"]
  spec.email         = ["alexandre.quard@gmail.com"]
  spec.summary       = %q{Popmovies is a new way to find & watch streaming video}
  spec.description   = %q{Popmovies is a new way to find & watch streaming video without going online and see boring ads}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
