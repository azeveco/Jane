# frozen_string_literal: true

require_relative "lib/jane/version"

Gem::Specification.new do |spec|
  spec.name = "jane"
  spec.version = Jane::VERSION
  spec.authors = ["Gabriel Azevedo"]
  spec.email = ["gazeveco@gmail.com"]

  spec.summary = "Simple and open source Feature Management."
  spec.description = "Jane is a feature management solution to help you control which features an user or a group has access to."
  spec.homepage = "https://github.com/azeveco/Jane"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/azeveco/Jane"
  spec.metadata["changelog_uri"] = "https://github.com/azeveco/Jane/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = Dir.glob("lib/**/*") +
             Dir.glob("app/**/*") +
             Dir.glob("config/**/*") +
             %w[LICENSE.txt README.md jane.gemspec]

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
