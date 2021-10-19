class Item < ApplicationRecord

  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :item_category
  belongs_to :regret

  validates :image, presence: true

  validates :price, presence: true, format: { with: /\A[0-9]+\z/ }
  validates :price, numericality: { greater_than_or_equal_to: 10, less_than_or_equal_to: 9999999, message: "Out of setting range"}
  validates :price, numericality: { only_integer: true, message: "Half-width number." }
  validates :item_category_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :regret_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :item_name, presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ } ,length: { maximum: 40 } 
  validates :calendar, presence: true, format: { with: /\A\d{4}-\d{2}-\d{2}\z/ }

end
