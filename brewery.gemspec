
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "brewery/version"

Gem::Specification.new do |spec|
  spec.name          = "brewery"
  spec.version       = Brewery::VERSION
  spec.authors       = ["'Joshua Vickstrom'"]
  spec.email         = ["'joshuavickstrom@outlook.com'"]

  spec.summary       = %q{Brewery Gem for Learn.co Project.}



  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "json"
  spec.add_development_dependency "rest-client"
end
