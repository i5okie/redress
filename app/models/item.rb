class Item < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :category

  has_many :tags
  
end
