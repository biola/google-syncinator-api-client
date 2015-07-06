lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'google_syncinator_api_client/version'

spec = Gem::Specification.new do |s|
  s.name = 'google_syncinator_api_client'
  s.version = GoogleSyncinatorAPIClient::VERSION
  s.summary = 'Client for the GoogleSyncinator directory API'
  s.description = 'API consuming models for the GoogleSyncinator directory project'
  s.files = Dir['README.*', 'MIT-LICENSE', 'lib/**/*.rb']
  s.require_path = 'lib'
  s.author = 'Michael Stephens'
  s.email = 'michael.stephens@biola.edu'
  s.homepage = 'https://github.com/biola/google-syncinator-api-client'
  s.license = 'MIT'
  s.add_dependency 'api-auth', '~> 1.0'
  s.add_dependency 'weary', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 2.14'
  s.add_development_dependency 'webmock', '~> 1.17'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'faker', '~> 1.3'
  s.add_development_dependency 'google_syncinator_api'
  s.add_development_dependency 'pry', '~> 0.9'
  s.add_development_dependency 'pry-stack_explorer', '~> 0.4'
end
