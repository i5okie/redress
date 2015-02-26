class Attachment < ActiveRecord::Base
  has_many :items, through: :itemattachments
  mount_uploader :attfile, AttfileUploader
  
end
