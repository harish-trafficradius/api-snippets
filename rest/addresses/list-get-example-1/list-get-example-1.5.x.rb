# Get twilio-ruby from twilio.com/docs/ruby/install
require 'twilio-ruby'

# Get your Account Sid and Auth Token from https://www.twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'

# Initialize Twilio Client
@client = Twilio::REST::Client.new(account_sid, auth_token)

# Loop over addresses and print out a property for each one
@client.account.addresses.list.each do |address|
  puts address.friendly_name
end
