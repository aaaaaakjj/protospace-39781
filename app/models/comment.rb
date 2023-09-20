class Comment < ApplicationRecord
  belongs_to :user
  #[ビロングストゥ。持たれている]
  belongs_to :prototype
  validates :content, presence: true
end
