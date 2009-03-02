# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{comeback}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tyler Hunt"]
  s.date = %q{2009-03-02}
  s.description = %q{Provides a mechanism for storing and accessing return URLs.}
  s.email = %q{tyler@tylerhunt.com}
  s.extra_rdoc_files = ["lib/comeback.rb", "README.markdown"]
  s.files = ["comeback.gemspec", "lib/comeback.rb", "Manifest", "MIT-LICENSE", "rails/init.rb", "Rakefile", "README.markdown", "test/comeback_test.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/tylerhunt/comeback}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Comeback", "--main", "README.markdown"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{comeback}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Provides a mechanism for storing and accessing return URLs.}
  s.test_files = ["test/comeback_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionpack>, [">= 0"])
      s.add_development_dependency(%q<echoe>, [">= 0"])
    else
      s.add_dependency(%q<actionpack>, [">= 0"])
      s.add_dependency(%q<echoe>, [">= 0"])
    end
  else
    s.add_dependency(%q<actionpack>, [">= 0"])
    s.add_dependency(%q<echoe>, [">= 0"])
  end
end
