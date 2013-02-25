require "cucumber/rake/task"
require 'rspec/core/rake_task'

task :default => [:spec,:run]

RSpec::Core::RakeTask .new(:spec) do |task|
  task.rspec_opts = ["--format documentation"]
end

RSpec::Core::RakeTask .new(:nyan) do |task|
  task.rspec_opts = ["--format NyanCatFormater"]
end

Cucumber::Rake::Task.new(:run) do |task|
  task.cucumber_opts = ["-t","~@pending","features --format pretty"]
end

Cucumber::Rake::Task.new(:wip) do |task|
  task.cucumber_opts = ["-t","@wip","features"]
end
