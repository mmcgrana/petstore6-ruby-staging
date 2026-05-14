# frozen_string_literal: true

require_relative "lib/petstore6/version"

Gem::Specification.new do |s|
  s.name = "petstore6"
  s.version = Petstore6::VERSION
  s.summary = "Ruby library to access the Petstore6 API"
  s.authors = ["Petstore6"]
  s.email = ""
  s.homepage = "https://gemdocs.org/gems/petstore6"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/mmcgrana/petstore6-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "cgi"
  s.add_dependency "connection_pool"
end
