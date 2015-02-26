class Itemattachment < ActiveRecord::Base
  belongs_to :item
  belongs_to :attachment
end
