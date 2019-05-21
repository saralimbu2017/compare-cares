require 'pry'
require_relative 'db_config'
require 'bcrypt'
# more things here 

# lets tell the translation about our tables
require_relative 'models/agedcare'
require_relative 'models/service'


binding.pry