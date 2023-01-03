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
    def play_game(args)
      class_game = Object.const_get "BrainGames::Games::Brain#{args.game_name.capitalize}"
      game = Engine.new(class_game)
      game.run
    end
  end
end
