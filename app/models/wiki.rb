class Wiki < ActiveRecord::Base
  attr_accessible :body, :title

  has_many :collaborations
  has_many :users, through: :collaborations
end
