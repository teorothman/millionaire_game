require_relative '/Users/teorothman/Coding/who_wants_to_be_a_millionaire/views/questions_view.rb'

class UserController
  def initialize(users_repo)
    @user_repo = users_repo
    @view = QuestionsView.new
  end


end
