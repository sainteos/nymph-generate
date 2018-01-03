
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nymph/generate/version"

Gem::Specification.new do |spec|
  spec.name          = "nymph-generate"
  spec.version       = Nymph::Generate::VERSION
  spec.authors       = ["Adaleigh Martin"]
  spec.email         = ["adaleigh.martin@gmail.com"]

  spec.summary       = %q{This is a Ruby Gem called nymph-generate to be used alongside the Nymph Game Engine}
  spec.description   = %q{nymph-generate is to be used alongside the Nymph Game Engine for generating Chaiscript modules for specified C++ classes and methods.}
  spec.homepage      = "https://sainteos.github.io/nymph-game-engine"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "localhost"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables << "nymph-generate"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
