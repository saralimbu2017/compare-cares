class AgedCare < ActiveRecord::Base
  belongs_to :user
  has_many :aged_care_services
  has_many :services, through: :aged_care_services
 end
 
 
