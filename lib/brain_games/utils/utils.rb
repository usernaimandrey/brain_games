# frozen_string_literal: true

module BrainGames
  module Utils
    class << self
      def generate_random(min, max)
        rand(min..max)
      end
    end
  end
end
