class Hotel < ActiveRecord::Base
    
    validates(:user_id,
      presence: true,
      )
    
    validates(:name,
      presence: true,
      uniqueness: true
      )  
    
    validates(:location,
      presence: true
      )
      
      
end
