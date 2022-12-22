install:
	bundle install

lint:
	bundle exec rake rubocop

lint-fix:
	bundle exec rake rubocop:auto_correct

test:
	bundle exec rake spec

console:
	bin/console