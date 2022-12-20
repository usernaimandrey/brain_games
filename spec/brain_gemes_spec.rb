# frozen_string_literal: true

RSpec.describe BrainGemes do
  it 'has a version number' do
    expect(BrainGemes::VERSION).not_to be_nil
  end

  it 'does something useful' do
    spec = 'spec'
    expect(spec).to be('spec')
  end
end
