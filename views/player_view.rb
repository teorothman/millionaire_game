# PLAYER VIEW
class PlayerView
  def ask_username
    puts "What is your name?"
    gets.chomp
  end

  def leaderboard(array)
    puts "LEADERBOARD:"
    array.each_with_index do |e,i|
      puts "#{i + 1} #{e.username} level: #{e.level} date: #{e.date}"
    end

  end
end
