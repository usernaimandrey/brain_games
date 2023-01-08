# frozen_string_literal: true

RSpec.describe 'BrainGcd' do
  let(:answers_success) { %w[Andrey 1 1 1].freeze }
  let(:expected_success) { load_fixtures('gcd_success.txt') }
  let(:game) { BrainGames::Engine.new(BrainGames::Games::BrainGcdStub) }

  it 'success' do
    I18n.locale = :ru
    expect do
      StdinSub.simulate_stdin(answers_success) { game.run }
    end.to output(expected_success).to_stdout
  end
end