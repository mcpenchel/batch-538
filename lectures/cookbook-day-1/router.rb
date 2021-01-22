class Router

  def initialize()
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

      else

      end
    end
  end

end