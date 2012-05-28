require "cucumber/rake/task"

Cucumber::Rake::Task.new(:run) do |task|
  task.cucumber_opts = ["-t","~@pending","features --format pretty"]
end

Cucumber::Rake::Task.new(:wip) do |task|
  task.cucumber_opts = ["-t","@wip","features"]
end
