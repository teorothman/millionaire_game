# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb
require_relative './repositories/questions_repository'
require_relative './repositories/player_repo'
require_relative './controllers/questions_controller'
require_relative './controllers/player_controller'
require_relative 'router'

questions_csv_file = File.join(__dir__, '/data/questions.csv')
players_csv_file = File.join(__dir__, '/data/players.csv')
questions_repo = QuestionsRepository.new(questions_csv_file)
questions_controller = QuestionsController.new(questions_repo)

player_repo = PlayerRepository.new(players_csv_file)
player_controller = PlayerController.new(player_repo)

router = Router.new(questions_controller, questions_repo, player_controller)

# Start the app
router.run
