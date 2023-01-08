# frozen_string_literal: true

module BrainGames
  module Games
    class BrainGcdStub
      class << self
        def game_rule
          I18n.t(:game_rule, scope: :gcd)
        end

        def question_right_answer
          ['15 17', '1']
        end
      end
    end
  end
end
