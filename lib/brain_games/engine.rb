# frozen_string_literal: true

module BrainGames
  class Engine
    attr_reader :game

    ROUNDS = 3

    def initialize(game)
      @game = game
    end

    def run
      puts(I18n.t(:greating))

      print(I18n.t(:acquaintance))

      name = $stdin.gets.chop
      puts(I18n.t(:personal_greating, name: name))
      game.show_game_rule
      ROUNDS.times do
        question, right_answer = game.run

        print(I18n.t(:question, question: question))

        answer = $stdin.gets.chop.downcase

        puts(I18n.t(:answer, answer: answer))
        if answer == right_answer
          puts(I18n.t(:correct))
        else
          puts(I18n.t(:no_correct, answer: answer, right_answer: right_answer, name: name))
          return
        end
      end
      puts(I18n.t(:goodbye, name: name))
    end
  end
end
