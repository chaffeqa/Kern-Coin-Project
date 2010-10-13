
class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors[attribute] << (options[:message] || "is not an email") unless
    value =~ /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  end
end

class BodyValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors[attribute] << (options[:message] || " contains invalid characters.") unless
    value =~  /\A[a-zA-Z0-9-\(\)\[\]\!\@\#\$\%\^\&\*\=\+\_\`\"\:\;\?\/\.\,]+\z/
  end
end

class Question < ActiveRecord::Base
  #  require 'lib/email_validator.rb'
  belongs_to :user

  validates_presence_of :title, :first_name, :last_name, :street_address_1, :state, :country, :zip_code, :phone, :email, :subject
  validates :email, :email => true
#  validates :body, :body => true
  validates :zip_code, :numericality => true
#  validates :phone, :with => /\b[0-9-]\b/, :message => "Your number can only contain numbers."
  
end
