# frozen_string_literal: true

require 'brain_games'
require 'stringio'

RSpec.configure do |config|
  config.example_status_persistence_file_path = '.rspec_status'

  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

module StdinSub
  def self.simulate_stdin(*inputs)
    io = StringIO.new
    inputs.flatten.each { |str| io.puts(str) }
    io.rewind
    actual_stdin = $stdin
    $stdin = io
    yield
  ensure
    $stdin = actual_stdin
  end
end

def load_fixtures(file_name)
  File.read(File.dirname(__FILE__) + "/fixtures/#{file_name}")
end
