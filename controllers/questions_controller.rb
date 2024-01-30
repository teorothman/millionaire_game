require_relative '/Users/teorothman/Coding/who_wants_to_be_a_millionaire/repositories/questions_repository.rb'
require_relative '/Users/teorothman/Coding/who_wants_to_be_a_millionaire/views/questions_view.rb'

# Class for the controller for questions
class QuestionsController
  def initialize(questions_repo)
    @questions_repo = questions_repo
    @view = QuestionsView.new
  end

  def generate_question
    question = @repo.generate_random(1)
    @view.display_question(question)
  end
end
