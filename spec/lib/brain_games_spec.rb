# frozen_string_literal: true

RSpec.describe 'BrainGames' do
  it 'has a version number' do
    expect(BrainGames::VERSION).not_to be_nil
  end
end
