# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'austin_crime/version'

Gem::Specification.new do |s|
  s.name          = "austin_crime"
  s.version       = AustinCrime::VERSION
  s.authors       = ["Tracy Holmes"]
  s.email         = ["tracypholmes@gmail.com"]

  s.summary       = %q{Simple command line tool to view Austin crime stats.}
  s.description   = %q{View crime reports on specific crime types!}
  s.homepage      = "https://github.com/tracypholmes/austin_crime"
  s.license       = "MIT"

  s.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  s.bindir        = "bin"
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_dependency  'thor', '~> 0'
  s.add_dependency 'httparty', '~> 0'

  s.add_development_dependency "bundler", "~> 1.14"
  s.add_development_dependency "pry", "~> 0.10"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", "~> 3.0"
end
