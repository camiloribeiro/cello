require "cucumber/rake/task"
require 'rspec/core/rake_task'
require 'coveralls/rake/task'
Coveralls::RakeTask.new

task :default => [:spec,:run, 'coveralls:push']

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
