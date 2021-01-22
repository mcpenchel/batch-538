# State -> lista de instâncias de Task
# Behavior -> [CRUD] Create, Read, Update (marcar como feito), Delete

class Repository

  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

end