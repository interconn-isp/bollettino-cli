# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bollettino/cli/version'

Gem::Specification.new do |spec|
  spec.name          = 'bollettino-cli'
  spec.version       = Bollettino::CLI::VERSION
  spec.authors       = ['Alessandro Desantis']
  spec.email         = ['desa.alessandro@gmail.com']
  spec.summary       = 'A CLI for the Bollettino library.'
  spec.description   = 'bollettino-cli is a CLI for the Bollettino library. It supports generation from CSV files as well.'
  spec.homepage      = 'https://github.com/interconn-isp/bollettino-cli'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.bindir        = 'bin'
  spec.executables   << 'bollettino-cli'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.3'
  spec.add_development_dependency 'rspec', '~> 3.1'
  spec.add_development_dependency 'mocha', '~> 1.1'

  spec.add_runtime_dependency 'bollettino', '~> 0.1'
  spec.add_runtime_dependency 'gli', '~> 2.12'
end
