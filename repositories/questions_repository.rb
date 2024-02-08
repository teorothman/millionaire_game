require_relative '../models/question'
require 'csv'

# Class for questions repo
class QuestionsRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @questions = []
    load
  end

  def all
    @questions
  end

  def generate_random(level)
    @questions.select { |question| question.level.to_i == level }.sample
  end

  private

  def load
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      @questions << Question.new(row)
    end
  end
end
