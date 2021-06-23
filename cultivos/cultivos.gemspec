require_relative 'lib/cultivos/version'

Gem::Specification.new do |spec|
  spec.name          = "cultivos"
  spec.version       = Cultivos::VERSION
  spec.authors       = ["Cristian Gonzalez"]
  spec.email         = ["alu0100887778@ull.edu.es"]

  spec.summary       = %q{"https://github.com/ULL-ESIT-LPP-2021/cultivos-alu0100887778"}
  spec.description   = %q{"Desarrollo Gema cultivos"}
  spec.homepage      = "https://github.com/alu0100887778/examensito"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/alu0100887778/examensito"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/alu0100887778/examensito"
  spec.metadata["changelog_uri"] = "https://github.com/alu0100887778/examensito"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
end
