# Class for Question
class Question
  attr_reader :level, :question, :option_a, :option_b, :option_c, :option_d, :answer

  def initialize(attributes = {})
    @level = attributes[:level]
    @question = attributes[:question]
    @option_a = attributes[:option_a]
    @option_b = attributes[:option_b]
    @option_c = attributes[:option_c]
    @option_d = attributes[:option_d]
    @answer = attributes[:answer]
  end
end
