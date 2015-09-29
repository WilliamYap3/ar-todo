class TaskController

  def self.add(task)
    t = task[0..-1].join(" ")
    task = Task.create(task: t, complete: false)
    self.reassign!
    TaskView.display_added_task(task)
  end

  def self.reassign!
    i = 1
    Task.all.each do |task|
      task.update(id: i)
      i += 1
    end
  end

  def self.list
    Task.all.each do |task|
      TaskView.display_task_complete(task)
    end
  end

  def self.delete(id)
    task = Task.find(id)
    task.destroy
    self.reassign!
    TaskView.display_deleted_task(task)
  end

  def self.complete(id)
    task = Task.find(id)
    task.complete = true
    task.save
    TaskView.display_completed_task(task)
  end

end