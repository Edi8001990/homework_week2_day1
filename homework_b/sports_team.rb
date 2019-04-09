# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
# For each property in the class make a getter method than can return them.
# Create a setter method to allow the coach's name to be updated.
# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
# Create a method that adds a new player to the players array.
# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.
class Team
  attr_accessor :name, :players, :coach, :points




  def initialize(name, players, coach)
      @name = name
      @players = players
      @coach = coach
      @points = 0
  end

  def add_player(new_player)
    @players << "Alex"
  end


  def check_player_in_array(check_player)
    for player in @players
    return true  if player == check_player
  end
end

def gett (get_win)
  @points += 2 if get_win == "win"
  p @points
end

  end
