class Task

  attr_reader :name

  def initialize(name)
    @name = name
    @completed = false
  end

  def completed?
    @completed
  end

  def complete!
    @completed = true
  end

end