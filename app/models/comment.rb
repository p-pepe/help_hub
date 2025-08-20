class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :commentable, polymorphic: true

  # enum kind: { general: 0, system: 1, warning: 2 } # 仮の例、必要に応じて調整
end
