class Client < ActiveRecord::Base
  belongs_to :user_id
  belongs_to :plan_id
  
  validates_presence_of :display_name, :plan_id
  
  has_many :paiements
  has_one :plan
end
