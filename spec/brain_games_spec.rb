# frozen_string_literal: true

RSpec.describe BrainGames do
  it 'has a version number' do
    expect(BrainGames::VERSION).not_to be_nil
  end

  # it 'welcome user' do
  #   # obj = double()
  #   # obj.stub!(:gets) {'Andrey'}
  #   # expect{BrainGames.run_game}.to output('Welcome to the Brain Games!').to_stdout
  # end
end
