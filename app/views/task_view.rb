class TaskView

  def self.display_task_complete(task)
    puts "#{task.id}. " +
    if task.complete == true
      "{COMPLETED }=> " + "#{task.task}"
    else
      "{PENDING }=> " + "#{task.task}"
    end
    puts "Appended \"#{task.task}\" to your TODO list...!"
  end

  def self.display_deleted_task(task)
     puts "Deleted \"#{task.task}\" from your TODO list...!"
  end
end