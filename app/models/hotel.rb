class Hotel < ActiveRecord::Base
    
    validates(:user_id,
      presence: true,
      length: {minimum: 5}
      )
    
    validates(:name,
      presence: true,
      uniqueness: true
      )  
    
    validates(:location,
      presence: true
      )
      
      
end
