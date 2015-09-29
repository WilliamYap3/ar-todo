class TaskController

  def self.add(task)
    t = task[0..-1].join(" ")
    Task.create(task: t, complete: false)
  end

  def self.list
    Task.all.each do |task|
      TaskView.display_task_complete(task)
    end
  end

  def self.delete(id)
    task = Task.find(id)
    task.destroy
    TaskView.display_deleted_task(task)
  end

  def self.complete(id)
    task = Task.find(id)
    task.complete = true
    task.save
  end

end