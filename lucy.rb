require 'bundler'
require 'pry'
require_relative './app/tasks'
Bundler.setup

@command = ARGF.argv[0]


@tasks.tasks.each do |task|
  task[:patterns].each do |pattern|
    if (pattern.class == Regexp)? pattern =~ @command : pattern == @command
      send(task[:task_class])
    end
  end
end

