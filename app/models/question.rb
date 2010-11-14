class Question < ActiveRecord::Base
  belongs_to :user

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :street_address_1, :presence => true
  validates :city, :presence => true
  validates :zip_code, :presence => true
  validates :state, :inclusion => {:in => Carmen::state_codes, :message => "does not exist"}
  validates :country, :inclusion => {:in => Carmen::country_names, :message => "does not exist"}
  validates :phone, :presence => true
  validates :subject, :presence => true
  validates :body, :presence => true
  
  validates :email, :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  validates :zip_code, :numericality => true
  #  validates :phone, :with => /\b[0-9-]\b/, :message => "Your number can only contain numbers."

end
