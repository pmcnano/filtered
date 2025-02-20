
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "filtered/version"

Gem::Specification.new do |spec|
  spec.name          = "filtered"
  spec.version       = Filtered::VERSION
  spec.authors       = ["Alexey Dubovskoy"]
  spec.email         = ["dubovskoy.a@gmail.com"]

  spec.summary       = %q{Filters ActiveRecord queries in a nice way}
  spec.homepage      = "https://github.com/dubadub/filtered"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|examples|docs|gemfiles|Appraisals)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "appraisal", "~> 2.2"

end
