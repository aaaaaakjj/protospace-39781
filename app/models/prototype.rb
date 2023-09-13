class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  # プロトタイプの名称は必須です
  validates :title, presence: true

  # キャッチコピーは必須です
  validates :catch_copy, presence: true

  # コンセプトは必須です
  validates :concept, presence: true

  # プロトタイプの画像（ActiveStorageを使用）は必須です
  validates :image, presence: true
end
