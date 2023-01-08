# frozen_string_literal: true

require 'optparse'
require_relative 'version'

module BrainGames
  class Cli
    OPTIONS = Struct.new(:lang, :game_name)

    LANGUAGE = %w[en ru].freeze

    GAMES = %w[clac even gcd prime progression].freeze

    class << self
      def run(options)
        args = OPTIONS.new

        opt_parser = OptionParser.new do |opts|
          opts.banner = 'Usage: brain_games | Использование brain_games [options]'

          opts.on('-g', '--game=NAME', 'Game name | Имя игры') do |g|
            if GAMES.include?(g)
              args.game_name = g
            else
              puts(<<-EOF
                Такой игры пока нет, доступные игры и правила можно посмотреть вызвав --rulles
                There are no such games yet, available games and rules can be viewed by calling --rulles
              EOF
                  )
              exit
            end
          end

          opts.on('-l', '--lang=LANGUAGE[en ru]',
                  'Language game, default english | Язык игры, по умолчанию английский') do |lang|
            if LANGUAGE.include?(lang)
              args.lang = lang
            else
              puts('Check option, language may be en or ru | Проверьте опцию, язык может быть en или ru')
              exit
            end
          end

          opts.on('-v', '--version', 'Version app | Версия приложения') do
            puts(BrainGames::VERSION)
            exit
          end

          opts.on('--rulles', 'Game rules | Правила игр') do
            puts(<<-EOF
              even: Answer yes if the number is even, otherwise answer no.
                    Ответьте yes, если число четное, иначе ответьте no

              calc: What is the result of the expression?
                    Что является результатом выражения?

              gcd: Find the greatest common divisor of given numbers.
                   Найдите наибольший общий делитель данных чисел.

              prime: Answer yes if given number is prime. Otherwise answer no.
                     Ответьте yes, если данное число простое. В противном случае ответьте no.

              progression: What number is missing in the progression?
                           Какое число пропущено в прогрессии?
            EOF
                )
            exit
          end

          opts.on('-h', '--help', 'Prints this help') do
            puts opts
            exit
          end
        end

        opt_parser.parse!(options)
        args
      end
    end
  end
end
