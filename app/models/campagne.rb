class Campagne < ActiveRecord::Base
  
  validates_presence_of :title, :datetime, :adress , :response
  validates_length_of :title, :minimum => 5, :too_short => "To have a comprehensive invite and response page, please user %{count} at least"
  validates_length_of :text, :maximum => 500, :too_long => "%{count} charactres max here"
  
  
  has_one :user
  has_one :client, :through => :user
end
