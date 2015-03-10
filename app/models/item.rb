class Item < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  
  belongs_to :manufacturer
  belongs_to :category

  has_many :tags
  has_many :itemdocuments
  has_many :itemattachments
  has_many :documents, through: :itemdocuments
  has_many :attachments, through: :itemattachments

  validates :name, presence: true, length: 5..100
  validates :description, presence: true, length: 5..500
  validates :category_id, presence: true
  validates :manufacturer_id, presence: true
  
  accepts_nested_attributes_for :attachments, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :documents, :allow_destroy => true, :reject_if => :all_blank

  
  
end
