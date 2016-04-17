
class Task
  def initialize 
    @tasks = []
  end

  def tasks
    @tasks
  end

  def register(patterns, task_class)
    @tasks << {:patterns => patterns, :task_class => task_class}
  end
end

def display_date
  puts `date`
end


@tasks = Task.new

@tasks.register ['time','date'], 'display_date'
@tasks.register ['break'], 'break_lucy'

