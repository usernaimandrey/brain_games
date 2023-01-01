# frozen_string_literal: true

require 'zeitwerk'
require 'i18n'

I18n.load_path += Dir["#{File.expand_path('config/locales')}/*.yml"]
I18n.config.available_locales = %i[en ru]
I18n.default_locale = :en

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
