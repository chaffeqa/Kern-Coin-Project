ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :user_name            => "chaffee.development@gmail.com",
  :password             => "BigBoss42",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

#puts "THIS GOT CALLED"