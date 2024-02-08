require_relative '../repositories/questions_repository.rb'
require_relative '../views/questions_view.rb'

# Class for the controller for questions
class QuestionsController
  def initialize(questions_repo)
    @questions_repo = questions_repo
    @view = QuestionsView.new
  end

  def generate_question(level)
    question = @questions_repo.generate_random(level)
    if @view.display_question(question) == question.answer
      @view.congrats
      true
    else
      @view.loser
      false
    end
  end
end
