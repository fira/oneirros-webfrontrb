
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "oneirros/webfront/version"

Gem::Specification.new do |spec|
  spec.name          = "oneirros-webfront"
  spec.version       = Oneirros::Webfront::VERSION
  spec.authors       = ["Fira"]
  spec.email         = ["loyauflorian@gmail.com"]

  spec.summary       = %q{OneiRRos Web Frontend}
  spec.homepage      = "https://github.com/Fira/oneirros-webfrontrb"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "sinatra"
  spec.add_runtime_dependency "haml"
  spec.add_runtime_dependency "unicorn", "~> 5.5"
end
