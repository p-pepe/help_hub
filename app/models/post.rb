class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy

  # enum status: { draft: 0, published: 1, archived: 2 }
end
