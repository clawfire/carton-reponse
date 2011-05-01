class Guest < ActiveRecord::Base
  belongs_to :campagne
  
  validates_associated :campagne, :message => "guest must have a party to go"
  validates_format_of :email, :with => /^[^@]+@[^@]+.[a-z]{2,}$/, :message => "should enter a valid email adress"
  validates_presence_of :name, :lastname, :email, :message => "must enter name, lastname and email"
end
