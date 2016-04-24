require_relative 'menu'
require_relative 'shop_front'
require 'twilio-ruby'

class Order

def time
  Time.now+3600
end

def message
  "Thank you for your order, you should receive it at #{time}"
end

def send_text

    account_sid = 'AC9dd4e330c257c14bab200963a5b974ce'
    auth_token =  'c292d6bd4f7593783e7ce39979d1e796'


begin
  @client = Twilio::REST::Client.new account_sid, auth_token

  @client.account.messages.create({
    :from => '+15005550006',
    :to => '+447988657982',
    :body => message,
  })
rescue Twilio::REST::RequestError => e
  puts e.message
    end
  end
end

