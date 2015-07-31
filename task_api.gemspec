# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'TaskApi/version'

Gem::Specification.new do |spec|
  spec.name          = "TaskApi"
  spec.version       = TaskApi::VERSION
  spec.authors       = ["hengtangan2025"]
  spec.email         = ["504371515@qq.com"]

  spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_development_dependency "actionpack", "~> 4.2.0"
  spec.add_development_dependency "activesupport", "~> 4.2.0"

  spec.add_development_dependency "jquery-rails", ">= 3.1.0"
  spec.add_development_dependency "uglifier"

  spec.add_development_dependency "bcrypt", "3.1.7"
  spec.add_development_dependency "mongoid"
  spec.add_development_dependency "bson_ext"
  spec.add_development_dependency "bootstrap", "3.2.0.0"
end
