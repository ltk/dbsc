# frozen_string_literal: true

require_relative "lib/dbsc/version"

Gem::Specification.new do |spec|
  spec.name          = "dbsc"
  spec.version       = DBSC::VERSION
  spec.authors       = ["ltk"]
  spec.summary       = "A library for supporting Device Bound Session Credentials"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/ltk/dbsc"
  spec.required_ruby_version = ">= 3.3"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    %x(git ls-files -z).split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
