# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'haml_ui/version'

Gem::Specification.new do |spec|
  spec.name          = "haml_ui"
  spec.version       = HamlUi::VERSION
  spec.authors       = ["rambabu.d"]
  spec.email         = ["rambabu.d@outlook.com"]
  spec.summary       = "Adding Responsive CSS to HAML"
  spec.description   = "Adding Responsive CSS to HAML"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  #s.add_dependency             'railties',   '>= 3.1'
  #s.add_dependency             'actionpack', '>= 3.1'
  spec.add_runtime_dependency 'haml', "~> 4.0.5"
  spec.add_runtime_dependency 'execjs'
  spec.add_runtime_dependency 'rails', '>= 3.1'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-rails"
  spec.add_development_dependency "pry-stack_explorer"
  spec.add_development_dependency "pry-byebug"
end
