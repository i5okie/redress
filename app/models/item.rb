class Item < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :category
end
