# QUESTIONS VIEW
class QuestionsView
  def display_question(question)
    puts 'Your question is...'
    sleep(0.5)
    puts "#{question.question}"
    puts "A: #{question.option_a}, B: #{question.option_b}, C: #{question.option_c}, D: #{question.option_d}"
    gets.chomp
  end

  def congrats
    puts 'Your answer is...'
    sleep(0.5)
    puts 'CORRECT!'
    sleep(0.5)
  end

  def loser
    puts 'Your answer is...'
    sleep(0.5)
    puts 'Incorrect. You lost.'
    sleep(0.5)
  end
end
