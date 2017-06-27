source 'https://rubygems.org'
ruby "2.3.1"
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "figaro"
gem "linkedin"
gem "octokit"
gem "pry-rails"
gem 'puma', '~> 3.0'
gem 'rack-cors'
gem 'rails', '~> 5.0.3'
gem "twitter"

group :test do
  gem "rspec-rails"
  gem "faker"
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
