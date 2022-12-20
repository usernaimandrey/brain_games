inslall:
	bundle install

lint:
	bundle exec rake rubocop

lint-fix:
	bundle exec rake rubocop -A

test:
	bundle exec rake spec