class Item < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :category

  has_many :tags

  validates :name, presence: true, length: 5..100
  validates :description, presence: true, length: 5..500
  validates :category_id, presence: true
  validates :manufacturer_id, presence: true
  
end
