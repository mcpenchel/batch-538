require_relative 'task'

class Controller

  def initialize(repository, view)
    @repository = repository
    @view       = view
  end

  def create_a_task
    # 1) Perguntar pro usuário (puts/gets.chomp) qual o nome da task
    name = @view.ask_for_task_name
    # 2) Criar uma nova instância de Task com o nome que eu consegui
    task = Task.new(name)
    # 3) Enviar ela para o meu repositório através do método add_task
    @repository.add_task(task)
  end

  def list_all_tasks
    # 1) Pegar todas as tasks do repositório
    tasks = @repository.all
    # 2) Imprimir para o usuário todas as tasks 
    @view.display_all_tasks(tasks)
  end

  def mark_task_as_completed
    # 1) (view) Perguntar para o/a usuário(a) qual o índice da tarefa
    index = @view.ask_which_task
    # 2) (repo) Tenho que acessar a Task correta naquele índice
    task = @repository.find(index)
    # 3) Marcar a Task como completed = true
    task.complete!
  end

  def delete_a_task
    # 1) (view) Perguntar para o/a usuário(a) qual o índice da tarefa a ser removida
    # 2) Enviar o índice para o repositório deletar a task do array
  end

end