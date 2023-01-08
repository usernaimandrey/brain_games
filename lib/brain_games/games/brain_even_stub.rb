# frozen_string_literal: true

module BrainGames
  module Games
    class BrainEvenStub
      class << self
        def game_rule
          I18n.t(:game_rule, scope: :even)
        end

        def question_right_answer
          %w[4 yes]
        end
      end
    end
  end
end
