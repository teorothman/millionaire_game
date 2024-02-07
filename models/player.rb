# Class for player
class Player
  attr_reader :level, :username, :date

  def initialize(attributes = {})
    @level = attributes[:level]
    @username = attributes[:username]
    @date = attributes[:date]
  end
end
