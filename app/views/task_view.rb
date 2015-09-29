class TaskView

  def self.display_task_complete(task)
    puts "#{task.id}. " +
    if task.complete == true
      "{COMPLETED }=> " + "#{task.task}"
    else
      "{PENDING }=> " + "#{task.task}"
    end
  end

  def self.display_added_task(task)
    puts "Added \"#{task.task}\" to your TODO list...!"
  end

  def self.display_deleted_task(task)
     puts "Deleted \"#{task.task}\" from your TODO list...!"
  end

  def self.display_completed_task(task)
    puts "Completed \"#{task.task}\" on your TODO list...!"
  end
  
end

