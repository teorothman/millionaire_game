class Router
  def initialize(questions_controller, questions_repo, player_controller)
    @questions_repo = questions_repo
    @questions_controller = questions_controller
    @player_controller = player_controller
    @running = true
  end

  def run
    level = 1
    welcome_message
    until @running == false
      if level == 11
        puts 'WOW! YOU ARE A MILLIONAIRE'
        sleep(0.5)
        puts "Thanks for playing //Teo"
        save_progress(level - 1)
        @player_controller.leaderboard
      elsif @questions_controller.generate_question(level) == true
        print `clear`
        level += 1
      else
        print `clear`
        @running = false
        puts "Sorry, you lost, you reached level #{level}"
        sleep(0.5)
        puts "Thanks for playing //Teo"
        save_progress(level - 1)
        @player_controller.leaderboard
      end
    end
  end

  def welcome_message
    puts '        Welcome!        '
    puts '           --           '
    puts ' Are you ready to play? '
    puts '  Who, wants to be...   '
    sleep(1)
    puts '    A millionaire       '
    sleep(1)
  end

  def save_progress(level)
    @player_controller.save(level)
  end

  private

  def stop
    @running = false
  end
end
