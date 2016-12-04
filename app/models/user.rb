class User < ActiveRecord::Base
   has_many :hotels, dependent: :destroy


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates(:email,
      presence: true,
      length: {minimum: 5}
      )
end
