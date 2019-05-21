class AgedCareService < ActiveRecord::Base
  has_many :agedcares
  has_many :services
end