class Client < ActiveRecord::Base
  belongs_to :UserId
  belongs_to :PlanId
  
  validates_presence_of :display_name, :PlanId
  
  has_many :paiements
  has_one :plan
end
