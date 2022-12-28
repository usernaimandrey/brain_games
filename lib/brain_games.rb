# frozen_string_literal: true

require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.setup

module BrainGames
  class << self
    def play_game(game_name)
      class_game = Object.const_get "BrainGames::Games::Brain#{game_name.capitalize}"
      puts class_game
      game = Engine.new(class_game)
      game.run
    end
  end
end
