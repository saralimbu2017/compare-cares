class AgedCareService < ActiveRecord::Base
  belongs_to :aged_care
  belongs_to :service
end
