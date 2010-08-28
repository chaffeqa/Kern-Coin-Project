class Question < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :title, :first_name, :last_name, :street_address_1, :state, :country, :zip_code, :phone, :email, :subject
  validates_format_of :body, :with => /\A[a-zA-Z0-9-\(\)\[\]\!\@\#\$\%\^\&\*\=\+\_\`\"\:\;\?\/\.\,]+\z/, :message => "Your message contains invalid characters."
  validates_format_of :email, :with => /\b[A-Z0-9._%-]+@[A-Z0-9.-]+?\.[A-Z]{2-4}\b/, :message => "Your email address is invalid."
  validates_format_of :zip_code, :with => /\b[0-9]{5}\b/, :message => "Your zip code is invalid."
  validates_format_of :phone, :with => /\b[0-9-]\b/, :message => "Your number can only contain numbers."
  
end
