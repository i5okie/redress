class Itemdocument < ActiveRecord::Base
  belongs_to :items
  belongs_to :documents
end
