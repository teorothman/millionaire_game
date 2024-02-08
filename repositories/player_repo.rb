require_relative '../models/player'
require 'csv'

# Class for questions repo
class PlayerRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @players = []
    load
  end

  def all
    @players
    sorted = @players.sort_by {|obj| obj.level.to_i}
    sorted.reverse
  end

  def create(attributes)
    @players << Player.new(attributes)
    save_csv
  end

  private

  def save_csv
    CSV.open(@csv_file_path, "wb") do |csv|
      csv << ["level", "username", "date"]
      @players.each do |player|
        csv << [player.level, player.username, player.date]
      end
    end
  end

  def load
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      @players << Player.new(row)
    end
  end
end
