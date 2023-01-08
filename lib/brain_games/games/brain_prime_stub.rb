# frozen_string_literal: true

module BrainGames
  module Games
    class BrainPrimeStub
      class << self
        def game_rule
          I18n.t(:game_rule, scope: :prime)
        end

        def question_right_answer
          %w[4 no]
        end
      end
    end
  end
end