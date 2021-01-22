# state: name (string), players (array), year_of_creation (integer)
class FootballClub

  attr_reader :name, :year_of_creation

  def initialize(name, players, year_of_creation)
    @name = name
    @players = players
    @year_of_creation = year_of_creation
  end

  def old?
    @year_of_creation < 1900
  end

  def self.sport
    "Football"
  end

end

botafogo = FootballClub.new("Botafogo", [], 1890)
palmeiras = FootballClub.new("Palmeiras", [1, 2, 3], 1914)

p botafogo.name
p palmeiras.year_of_creation

p palmeiras.old?
p botafogo.old?

p FootballClub.sport

# p botafogo.sport => Dá erro! Pq é método de classe, não de instância