require 'bundler'
require 'pry'
require_relative './app/tasks'
Bundler.setup
  

#[todo]: Create modules MattivdWeem/Lucy

@command = ARGF.argv[0]

@tasks.tasks.each do |task|

  task[:patterns].each do |pattern|
    if pattern == @command # replace this with regex matching 
      puts pattern 
      send(task[:task_class])
    end
  end
end



def hello
  'Hello World'
end


