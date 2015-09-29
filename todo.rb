require_relative 'config/application'

action = ARGV[0]

case action
  when "add"
    TaskController.add(ARGV[1..-1])
  when "list"
    TaskController.list
  when "delete"
    TaskController.delete(ARGV[1].to_i)
  when "complete"
    TaskController.complete(ARGV[1].to_i)
  else
    puts """Invalid action. Please enter one of the following:
1) add (followed by task description) 
2) list
3) delete (followed by task ID)
4) complete (followed by task ID)"""
end

