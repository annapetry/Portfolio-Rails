ActionMailer::Base.smtp_settings = {
    :enable_starttls_auto => true,
    :address        => 'smtp.gmail.com',
    :port           => 587,
    :domain         => 'www.annapetry.com',
    :authentication => :plain,
    :user_name      => 'hello@annapetry.com',
    :password       => 'firecracker0207'
  }