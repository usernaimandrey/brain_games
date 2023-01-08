# frozen_string_literal: true

RSpec.describe 'BrainEven' do
  let(:answers_success) { %w[Andrey yes yes yes].freeze }
  let(:answers_failure) { %w[Andrey no].freeze }
  let(:expected_success) { load_fixtures('even_success.txt') }
  let(:expected_failure) { load_fixtures('even_failure.txt') }
  let(:expected_success_ru) { load_fixtures('even_success_ru.txt') }

  it 'success' do
    game = BrainGames::Engine.new(BrainGames::Games::BrainEvenStub)
    expect do
      StdinSub.simulate_stdin(answers_success) { game.run }
    end.to output(expected_success).to_stdout
  end

  it 'failure' do
    game = BrainGames::Engine.new(BrainGames::Games::BrainEvenStub)
    expect do
      StdinSub.simulate_stdin(answers_failure) { game.run }
    end.to output(expected_failure).to_stdout
  end

  it 'success ru' do
    game = BrainGames::Engine.new(BrainGames::Games::BrainEvenStub)
    I18n.locale = :ru
    expect do
      StdinSub.simulate_stdin(answers_success) { game.run }
    end.to output(expected_success_ru).to_stdout
  end
end
