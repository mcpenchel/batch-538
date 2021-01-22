class View

  def ask_for_task_name
    puts "What do you have to do?"
    print "> "
    return gets.chomp
  end

  # 1 - [X] Salvar o elenco do Botafogo
  # 2 - [ ] Matar o Pedro Raul

  def display_all_tasks(tasks)
    tasks.each_with_index do |task, index|
      x = task.completed? ? 'X' : ' '
      puts "#{index + 1} - [#{x}] #{task.name}"
    end
  end

  def ask_which_task
    puts "Which task is completed? Give me the number"
    print "> "
    return gets.chomp.to_i - 1
  end

end