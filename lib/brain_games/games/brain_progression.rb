# frozen_string_literal: true

require_relative '../utils/utils'

module BrainGames
  module Games
    class BrainProgression
      class << self
        def show_game_rule
          puts('What number is missing in the progression?')
        end

        def run
          elements_count = Utils.generate_random(5, 15)
          step_progression = Utils.generate_random(2, 10)
          element_hidden = Utils.generate_random(0, elements_count)
          first_element = Utils.generate_random(0, 100)
          last_element = first_element + (elements_count * step_progression)

          right_answer = 0
          question = []
          index = 0

          (first_element..last_element).step(step_progression) do |element|
            if index == element_hidden
              right_answer = element
              question << '..'
              index += 1
              next
            end
            question << element
            index += 1
          end
          [question.join(' '), right_answer.to_s]
        end
      end
    end
  end
end
