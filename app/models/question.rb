
class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors[attribute] << (options[:message] || "is not a valid email address") unless
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

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :street_address_1, :presence => true
  validates :state, :presence => true
  validates :city, :presence => true
  validates :zip_code, :presence => true
  validates :country, :presence => true
  validates :phone, :presence => true
  validates :subject, :presence => true
  validates :body, :presence => true
  
  validates :email, :email => true
  #  validates :body, :body => true
  validates :zip_code, :numericality => true
  #  validates :phone, :with => /\b[0-9-]\b/, :message => "Your number can only contain numbers."


  def self.state_selector
    '
        <option value="AL">AL</option>
	<option value="AK">AK</option>
	<option value="AZ">AZ</option>
	<option value="AR">AR</option>
	<option value="CA">CA</option>
	<option value="CO">CO</option>
	<option value="CT">CT</option>
	<option value="DE">DE</option>
	<option value="DC">DC</option>
	<option value="FL">FL</option>
	<option value="GA">GA</option>
	<option value="HI">HI</option>
	<option value="ID">ID</option>
	<option value="IL">IL</option>
	<option value="IN">IN</option>
	<option value="IA">IA</option>
	<option value="KS">KS</option>
	<option value="KY">KY</option>
	<option value="LA">LA</option>
	<option value="ME">ME</option>
	<option value="MD">MD</option>
	<option value="MA">MA</option>
	<option value="MI">MI</option>
	<option value="MN">MN</option>
	<option value="MS">MS</option>
	<option value="MO">MO</option>
	<option value="MT">MT</option>
	<option value="NE">NE</option>
	<option value="NV">NV</option>
	<option value="NH">NH</option>
	<option value="NJ">NJ</option>
	<option value="NM">NM</option>
	<option value="NY">NY</option>
	<option value="NC">NC</option>
	<option value="ND">ND</option>
	<option value="OH">OH</option>
	<option value="OK">OK</option>
	<option value="OR">OR</option>
	<option value="PA">PA</option>
	<option value="RI">RI</option>
	<option value="SC">SC</option>
	<option value="SD">SD</option>
	<option value="TN">TN</option>
	<option value="TX">TX</option>
	<option value="UT">UT</option>
	<option value="VT">VT</option>
	<option value="VA">VA</option>
	<option value="WA">WA</option>
	<option value="WV">WV</option>
	<option value="WI">WI</option>
	<option value="WY">WY</option>
    '
  end
end
