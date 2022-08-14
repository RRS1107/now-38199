class Package < ApplicationRecord

  belongs_to :staff
  has_one :record, dependent: :destroy

  validates :delivery_date, presence: true
  validates :pickup_date, presence: true  
  validates :invoice_number,presence: true, numericality: { with: /\A\d{12}\z/, message: "is invalid." }
  validates :preferred_time_id, numericality: { other_than: 1, message: "can't be blank" } 
  validates :delivery_area_id, numericality: { other_than: 1, message: "can't be blank" } 
  validates :collection_area_id, numericality: { other_than: 1, message: "can't be blank" } 
  validates :unit, presence: true  

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :delivery_area, class_name: 'Prefecture'
  belongs_to :collection_area, class_name: 'Prefecture'
  belongs_to :preferred_time
end
