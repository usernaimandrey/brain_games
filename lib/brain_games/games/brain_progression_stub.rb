# frozen_string_literal: true

module BrainGames
  module Games
    class BrainProgressionStub
      class << self
        def game_rule
          I18n.t(:game_rule, scope: :progression)
        end

        def question_right_answer
          ['1 3 5 .. 9', '7']
        end
      end
    end
  end
end
