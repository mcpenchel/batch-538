require_relative 'repository'
require_relative 'task'
require_relative 'view'
require_relative 'controller'

repository = Repository.new
view       = View.new
controller = Controller.new(repository, view)

controller.create_a_task
controller.create_a_task

controller.list_all_tasks

controller.mark_task_as_completed

controller.list_all_tasks