require "cucumber/rake/task"
require 'rspec/core/rake_task'

task :default => [:spec,:run]

Spec::Rake::SpecTask.new(:spec)

Cucumber::Rake::Task.new(:run) do |task|
  task.cucumber_opts = ["-t","~@pending","features --format pretty"]
end

Cucumber::Rake::Task.new(:wip) do |task|
  task.cucumber_opts = ["-t","@wip","features"]
end
