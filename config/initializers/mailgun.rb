Mailgun.configure do |config|
  config.api_key = Rails.application.secrets.mailgun_secret_api_key
 => end