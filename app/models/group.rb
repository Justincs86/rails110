class Group < ApplicationRecord
  validates :title, :description, presence: true
  belongs_to :user
  has_many :group_relationships
  has_many :members, :through => :group_relationships, source: :user
  has_many :posts
end
