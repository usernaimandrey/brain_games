# frozen_string_literal: true

module BrainGames
  module Games
    class BrainCalcStub
      class << self
        def game_rule
          I18n.t(:game_rule, scope: :calc)
        end

        def question_right_answer
          ['3 * 2', '6']
        end
      end
    end
  end
end
