# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb
require_relative '/Users/teorothman/Coding/who_wants_to_be_a_millionaire/repositories/questions_repository.rb'
require_relative '/Users/teorothman/Coding/who_wants_to_be_a_millionaire/controllers/questions_controller.rb'
require_relative '/Users/teorothman/Coding/who_wants_to_be_a_millionaire/repositories/users_repository.rb'
require_relative '/Users/teorothman/Coding/who_wants_to_be_a_millionaire/controllers/user_controller.rb'
require_relative 'router'

questions_csv_file = File.join(__dir__, '/data/questions.csv')
users_csv_file = File.join(__dir__, '/data/users.csv')
questions_repo = QuestionsRepository.new(questions_csv_file)
user_repo = UsersRepository.new(users_csv_file)
questions_controller = QuestionsController.new(questions_repo)
users_controller = UserController.new(user_repo)

router = Router.new(questions_controller, user_repo)

# Start the app
router.run
