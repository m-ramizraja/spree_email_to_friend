FactoryGirl.define do

  factory :valid_email, :class => Spree::MailToFriend  do

    host               'localhost'
    subject            'email to friend testing specs'
    sender_name        'Ryan'
    sender_email       'ryan@spreecommerce.com'
    recipient_name     'test_user'
    recipient_email    'ryan@spreecommerce.com'
    message            'Hello there!'
    recipients         'ryan@spreecommerce.com'
    invalid_recipients  ''
    hide_recipients    'ryan@spreecommerce.com'
  end
end