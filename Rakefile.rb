require "bundler/setup"
require "rake/extensiontask"
require "rake/testtask"

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

Rake::TestTask.new do |t|
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
  t.warning = false
end
Rake::ExtensionTask.new("uname.rb")

task default: ["clobber", "compile", "test"]
task lint: ["linters:c", "linters:ruby"]
