Petfinder.configure do |config|
  config.api_key = ENV.fetch("PETFINDER_API_KEY")
  config.api_secret = ENV.fetch("PETFINDER_API_SECRET")
end