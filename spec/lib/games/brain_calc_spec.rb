# frozen_string_literal: true

RSpec.describe 'BrainCalc' do
  let(:answers_success) { %w[Andrey 6 6 6].freeze }
  let(:answers_failure) { %w[Andrey 7].freeze }
  let(:expected_success) { load_fixtures('calc_success.txt') }
  let(:expected_failure) { load_fixtures('calc_failure.txt') }
  let(:game) { BrainGames::Engine.new(BrainGames::Games::BrainCalcStub) }

  it 'success' do
    expect do
      StdinSub.simulate_stdin(answers_success) { game.run }
    end.to output(expected_success).to_stdout
  end

  it 'failure' do
    expect do
      StdinSub.simulate_stdin(answers_failure) { game.run }
    end.to output(expected_failure).to_stdout
  end
end
