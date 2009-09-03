# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{comeback}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tyler Hunt"]
  s.date = %q{2009-09-03}
  s.email = %q{tyler@tylerhunt.com}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "README.markdown",
    "Rakefile",
    "VERSION.yml",
    "lib/comeback.rb",
    "rails/init.rb",
    "spec/comeback_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/tylerhunt/comeback}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Provides a mechanism for storing and accessing return URLs.}
  s.test_files = [
    "spec/comeback_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionpack>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 0.11.0"])
      s.add_development_dependency(%q<rspec>, ["~> 1.2.2"])
    else
      s.add_dependency(%q<actionpack>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 0.11.0"])
      s.add_dependency(%q<rspec>, ["~> 1.2.2"])
    end
  else
    s.add_dependency(%q<actionpack>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 0.11.0"])
    s.add_dependency(%q<rspec>, ["~> 1.2.2"])
  end
end
