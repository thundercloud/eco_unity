# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address        => 'pop.yandex.com',
    :domain         => 'mail.yandex.com',
    :port           => 995,
    :user_name      => '',
    :password       => '',
    :authentication => :plain,
    :enable_starttls_auto => true
}
