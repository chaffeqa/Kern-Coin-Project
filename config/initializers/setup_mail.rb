ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'gmail.com',
  :user_name            => "chaffee.development",
  :password             => "BigBoss42",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

#puts "THIS GOT CALLED"