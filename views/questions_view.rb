class QuestionsView
  def display_question(question)
    puts "Your question is..."
    sleep(0.5)
    puts "#{question.question}"
    puts "A: #{question.option_a}, B: #{question.option_b}, C: #{question.option_c}, D: #{question.option_d}"
  end
end

test = QuestionsView.new
