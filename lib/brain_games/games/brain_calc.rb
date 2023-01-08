# frozen_string_literal: true

require_relative '../utils/utils'

module BrainGames
  module Games
    class BrainCalc
      class << self
        OPERATIONS = %w[+ - *].freeze

        def game_rule
          I18n.t(:game_rule, scope: :calc)
        end

        def question_right_answer
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
