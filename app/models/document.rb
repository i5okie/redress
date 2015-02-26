class Document < ActiveRecord::Base
  has_many :items, through: :itemdocuments
  mount_uploader :docfile, DocfileUploader

  def display_name
    self.name.present? ? self.name : "untitled"
  end
end