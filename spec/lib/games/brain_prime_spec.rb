# frozen_string_literal: true

RSpec.describe 'BrainPrime' do
  let(:answers_success) { %w[Andrey no no no].freeze }
  let(:expected_success) { load_fixtures('prime_success.txt') }
  let(:game) { BrainGames::Engine.new(BrainGames::Games::BrainPrimeStub) }

  it 'success' do
    I18n.locale = :ru
    expect do
      StdinSub.simulate_stdin(answers_success) { game.run }
    end.to output(expected_success).to_stdout
  end
end