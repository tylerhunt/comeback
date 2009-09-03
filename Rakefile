require 'rake'
require 'spec/rake/spectask'
  
begin
  require 'jeweler'

  Jeweler::Tasks.new do |gem|
    gem.name = 'comeback'
    gem.summary = 'Provides a mechanism for storing and accessing return URLs.'
    gem.email = 'tyler@tylerhunt.com'
    gem.homepage = 'http://github.com/tylerhunt/comeback'
    gem.authors = ['Tyler Hunt']

    gem.add_dependency('actionpack')

    gem.add_development_dependency('jeweler', '~> 0.11.0')
    gem.add_development_dependency('rspec', '~> 1.2.2')
  end
rescue LoadError
  puts 'Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com'
end

task :default => :spec

Spec::Rake::SpecTask.new(:spec) do |t|
  t.libs << 'rails'
  t.spec_opts = ['--colour --format progress --loadby mtime --reverse']
  t.spec_files = FileList['spec/**/*_spec.rb']
end
