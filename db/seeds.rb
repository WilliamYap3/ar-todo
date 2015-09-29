require_relative '../app/models/task'
require 'faker'

5.times do 
	Task.create(task: Faker::Hacker.say_something_smart)
end