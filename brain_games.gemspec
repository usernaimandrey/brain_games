# frozen_string_literal: true

require_relative 'lib/brain_games/version'

Gem::Specification.new do |spec|
  spec.name = 'brain_games'
  spec.version = BrainGames::VERSION
  spec.authors = ['Andrey']
  spec.email = ['anshlyapnikov@yandex.ru']

  spec.summary = 'This is a CLI APP Brain Games'
  spec.description = 'Brain Games This is a collection of 5 games'
  spec.homepage = 'https://github.com/usernaimandrey/brain_games'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  # spec.metadata['allowed_push_host'] = ''

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/usernaimandrey/brain_games'
  spec.metadata['changelog_uri'] = 'https://github.com/usernaimandrey/brain_games.'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files = Dir.chdir(__dir__) do
  #   `git ls-files -z`.split("\x0").reject do |f|
  #     (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
  #   end
  # end

  spec.files = Dir.glob('{lib,man,exe}/**/*', File::FNM_DOTMATCH).reject { |f| File.directory?(f) }
  # Include the CHANGELOG.md, LICENSE.md, README.md manually
  spec.files += %w[LICENSE.txt README.md]
  # include the gemspec itself because warbler breaks w/o it
  spec.files += %w[brain_games.gemspec]
  spec.bindir = 'exe'
  spec.executables = 'brain_games'
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  # spec.metadata['rubygems_mfa_required'] = 'true'
end
