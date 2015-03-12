class Document < ActiveRecord::Base
  mount_uploader :doc, DocUploader
  
  has_many :itemdocuments
  has_many :items, through: :itemdocuments
  

  def display_name
    self.name.present? ? self.name : doc.file.filename
  end
end