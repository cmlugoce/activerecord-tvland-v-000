class Actor < ActiveRecord::Base
  
   has_many :shows, through: :characters
   has_many :characters
   
   def full_name
     "#{self.first_name} #{self.last_name}"
    end 
    
    def list_roles
      characters.map do |c|
        character = c.name 
        show = c.show.name 
        
         "#{character} - #{show}"
      end 
    end 
        
        
end