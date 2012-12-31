# Load the rails application
require File.expand_path('../application', __FILE__)

ENV['FACEBOOK_KEY'] = '554127591282893'
ENV['FACEBOOK_SECRET'] = '1fb26b080c76a4fae1cd26a262c1d95a'

# Initialize the rails application
Testserver::Application.initialize!
