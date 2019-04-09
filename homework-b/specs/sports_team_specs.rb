require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestTeam < MiniTest::Test


def test_team
team = Team.new("Team1", ["Player1"], "Coach1")
assert_equal("Team1", team.name)
end


def test_players
team = Team.new("Team1", ["Player1"], "Coach1")
assert_equal(["Player1"], team.players)
end


def test_coach
team = Team.new("Team1", ["Player1"], "Coach1")
assert_equal("Coach1", team.coach)
end

def test_can_add_player_to_team
  team = Team.new("Team1", ["Player1"], "Coach1")
  # players = ["Player1"]
  team.add_player("Alex")
  assert_equal("Alex", team.players[1])
end

def test_if_are_playeys_in_array
  team = Team.new("Team1", ["Player1"], "Coach1")
  # players = ["Player1"]
  check_player_array = team.check_player_in_array("Player1")
  assert_equal(true, check_player_array)
end


def test_points
team = Team.new("Team1", ["Player1"], "Coach1")
assert_equal(0, team.points)
end


def test_whether_win
team = Team.new("Team1", ["Player1"], "Coach1")
team.gett ("win")
assert_equal(2, team.points)
end

end
