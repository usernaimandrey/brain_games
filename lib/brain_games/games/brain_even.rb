# frozen_string_literal: true

require_relative '../utils/utils'

module BrainGames
  module Games
    class BrainEven
      class << self
        def show_game_rule
          puts('Answer "yes" if the number is even, otherwise answer "no".')
        end

        def run
          question = Utils.generate_random(1, 100)
          right_answer = even?(question) ? 'yes' : 'no'

          [question.to_s, right_answer]
        end

        private

        def even?(number)
          (number % 2).zero?
        end
      end
    end
  end
end
