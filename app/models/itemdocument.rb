class Itemdocument < ActiveRecord::Base
  belongs_to :item
  belongs_to :document
end
