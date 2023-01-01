# frozen_string_literal: true

require_relative '../utils/utils'

module BrainGames
  module Games
    class BrainPrime
      class << self
        def show_game_rule
          puts(I18n.t(:game_rule, scope: :prime))
        end

        def run
          question = Utils.generate_random(1, 100)
          right_answer = prime?(question) ? 'yes' : 'no'

          [question.to_s, right_answer]
        end

        def prime?(number)
          return false if number < 2

          return true if number == 2

          (2..Math.sqrt(number).round).each do |divider|
            return false if (number % divider).zero?
          end
          true
        end
      end
    end
  end
end
