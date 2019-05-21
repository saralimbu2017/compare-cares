class Agedcares_service < ActiveRecord::Base
  has_many :agedcares
  has_many :services
end