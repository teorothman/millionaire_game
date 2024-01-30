# rubocop:disable Metrics/MethodLength

# TODO: implement the router of your app.
class Router
  def initialize(user_controller, questions_controller)
    @user_controller = user_controller
    @questions_controller = questions_controller
    @running = true
  end

  def run
    puts "        Welcome!        "
    puts "           --           "
    puts " Are you ready to play? "
    puts "  Who, wants to be...   "
    sleep(1)
    puts "    A millionaire       "
    sleep(1)

    while @running
      display_question
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  private

  def route_action(action)
    case action
    when 1 then @questions_controller.get_question
    when 2 then @controller.score
    when 8 then stop
    else
      puts "Please make a decision"
    end
  end

  def stop
    @running = false
  end

  def display_question
    puts ""
    puts "1 - Next question"
    puts "2 - Scoreboard"
    puts "3 - Exit"
  end
end
# rubocop:enable Metrics/MethodLength
