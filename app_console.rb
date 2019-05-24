require 'pry'
require 'bcrypt'
# more things here 

# lets tell the translation about our tables
require_relative 'db_config'
require_relative 'models/aged_care'
require_relative 'models/aged_care_service'
require_relative 'models/service'
require_relative 'models/user'

binding.pry
