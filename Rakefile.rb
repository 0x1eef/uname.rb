require "rake/extensiontask"
require "bundler/gem_tasks"

namespace :linters do
  desc "Run the C linter"
  task :c do
    sh "uncrustify -c .uncrustify.cfg --no-backup --replace ext/uname.rb/*.c"
  end

  desc "Run the Ruby linter"
  task :ruby do
    sh "bundle exec rubocop -A Rakefile.rb lib/**/*.rb spec/**/*.rb"
  end
end

Rake::ExtensionTask.new("uname.rb")
task lint: ["linters:c", "linters:ruby"]
