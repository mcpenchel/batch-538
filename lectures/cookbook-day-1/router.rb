class Router

  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts "What do you want to do?"
      puts "1. Display all tasks"
      puts "2. Create a new task"
      puts "3. Mark a task as completed"
      choice = gets.chomp.to_i

      if choice == 1
        @controller.list_all_tasks
      elsif choice == 2
        @controller.create_a_task
      elsif choice == 3
        @controller.mark_task_as_completed
      else
        puts "Invalid operation.... Please choose a valid one"
      end
    end
  end

end