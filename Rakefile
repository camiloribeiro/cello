require "cucumber/rake/task"
require 'rspec/core/rake_task'
require 'rcov'

task :default => [:spec,:run]

Spec::Rake::SpecTask.new(:spec) do
  rcov = true
  rcov_opts = %w{-I ./lib --exclude ./spec,./features}
end

Cucumber::Rake::Task.new(:run) do |task|
  task.rcov = true
  rcov_opts = %w{-I ./lib}
  task.cucumber_opts = ["-t","~@pending","features --format pretty"]
end

Cucumber::Rake::Task.new(:wip) do |task|
  task.cucumber_opts = ["-t","@wip","features"]
end
