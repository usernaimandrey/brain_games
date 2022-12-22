# frozen_string_literal: true

require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.setup

module BrainGames
  include Games

  class << self
    def play_game
      game = Engine.new(Games::BrainEven)
      game.run
    end
  end
end
