# frozen_string_literal: true

require_relative '../utils/utils'

module BrainGames
  module Games
    class BrainCalc
      class << self
        OPERATIONS = %w[+ - *].freeze

        def show_game_rule
          puts('What is the result of the expression?')
        end

        def run
          left_operand = Utils.generate_random(1, 100)
          right_operand = Utils.generate_random(1, 100)
          operation = OPERATIONS[Utils.generate_random(0, 2)]
          question = "#{left_operand} #{operation} #{right_operand}"
          right_answer = nil

          case operation
          when '+'
            right_answer = left_operand + right_operand
          when '*'
            right_answer = left_operand * right_operand
          when '-'
            right_answer = left_operand - right_operand
          else
            puts("Unknow operation #{operation}")
          end
          [question, right_answer.to_s]
        end
      end
    end
  end
end
