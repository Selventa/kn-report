# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kn/report/version'

Gem::Specification.new do |spec|
  spec.name          = "kn-report"
  spec.version       = Kn::Report::VERSION
  spec.authors       = ["Anthony Bargnesi"]
  spec.email         = ["abargnesi@selventa.com"]

  spec.summary       = %q{Report statistics for a Knowledge Network.}
  spec.description   = %q{Report statistics for a Knowledge Network.}
  spec.homepage      = "https://github.com/Selventa/kn-report"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency  "faraday_middleware", "~> 0.10"
  spec.add_dependency  "faraday_sdp_auth",   "~> 0.1"
  spec.add_dependency  "excon",              "~> 0.45"
  spec.add_dependency  "ascii_charts",       "~> 0.9"
end
