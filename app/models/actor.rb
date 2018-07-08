class Actor < ActiveRecord::Base
  
   has_many :shows, through: :characters
   has_many :characters
end