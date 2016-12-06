class Hotel < ActiveRecord::Base
    
    belongs_to :user
    
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
      
      
    
    has_attached_file(:photo, 
                      :styles => { :medium => "300x300>", 
                                   :thumb => "100x100>" }) 
                     #:default_url => "/images/:style/missing.png" }
                     
    validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/  
    
    #Geocoder
    geocoded_by :location   # can also be an IP address
    after_validation :geocode          # auto-fetch coordinates

end
