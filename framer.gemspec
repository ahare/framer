# -*- encoding: utf-8 -*-
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "framer/version"

Gem::Specification.new do |s|
  s.name          = "framer"
  s.version       = Framer::VERSION
  s.authors       = "Andrew Hare"
  s.email         = ""
  s.description   = "A simple gem for creating directory structures from YAML files."
  s.summary       = "A simple gem for creating directory structures from YAML files."
  s.homepage      = ""
  s.license     = "MIT"

  s.files         = `git ls-files`.split($/)
  s.test_files    = "spec"
  s.require_paths = ["lib"]
  s.executables   = "framer" 

  s.add_dependency "thor"

  s.add_development_dependency "rspec"
end
