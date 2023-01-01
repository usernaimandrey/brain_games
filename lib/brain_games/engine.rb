# frozen_string_literal: true

module BrainGames
  class Engine
    attr_reader :game

    ROUNDS = 3

    def initialize(game)
      @game = game
    end

    def run
      puts('Welcome to the Brain Games!')

      print('May I have your name?: ')

      name = $stdin.gets.chop
      puts("Hello #{name}!")
      game.show_game_rule
      ROUNDS.times do
        question, right_answer = game.run

        print("Question: #{question} ")

        answer = $stdin.gets.chop.downcase

        puts("Your answer: #{answer}")
        if answer == right_answer
          puts('Correct!')
        else
          puts("#{answer} is wrong answer ;(. Correct answer was #{right_answer}.\nLet's try again, #{name}!")
          return
        end
      end
      puts("Congratulations, #{name}!")
    end
  end
end
