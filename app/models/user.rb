class User < ActiveRecord::Base
   attr_accessible :name, :email, :password

   has_many :collaborations
   has_many :wikis, through: :collaborations
end
