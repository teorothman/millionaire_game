require_relative '../repositories/player_repo'
require_relative '../views/player_view'
require 'date'

# Class for the controller for questions
class PlayerController
  def initialize(player_repo)
    @player_repo = player_repo
    @view = PlayerView.new
  end

  def save(level)
    username = @view.ask_username
    date = Time.now.strftime("%d/%m/%Y %H:%M")
    @player_repo.create({username: username, level: level, date: date})
  end

  def leaderboard
    all = @player_repo.all
    @view.leaderboard(all)
  end
end
