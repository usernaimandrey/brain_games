# frozen_string_literal: true

RSpec.describe 'BrainProgression' do
  let(:answers_success) { %w[Andrey 7 7 7].freeze }
  let(:expected_success) { load_fixtures('progression_success.txt') }
  let(:game) { BrainGames::Engine.new(BrainGames::Games::BrainProgressionStub) }

  it 'success' do
    I18n.locale = :ru
    expect do
      StdinSub.simulate_stdin(answers_success) { game.run }
    end.to output(expected_success).to_stdout
  end
end
