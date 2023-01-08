# frozen_string_literal: true

require_relative '../utils/utils'

module BrainGames
  module Games
    class BrainGcd
      class << self
        def game_rule
          I18n.t(:game_rule, scope: :gcd)
        end

        def question_right_answer
          num_one = Utils.generate_random(1, 100)
          num_two = Utils.generate_random(1, 100)
          number_lesser, number_bigest = [num_one, num_two].minmax
          question = "#{num_one} #{num_two}"
          right_answer = gcd(number_bigest, number_lesser)

          [question, right_answer.to_s]
        end

        private

        def gcd(number_bigest, number_lesser)
          remainder = number_bigest.remainder number_lesser
          return number_lesser if remainder.zero?

          gcd(number_lesser, remainder)
        end
      end
    end
  end
end
