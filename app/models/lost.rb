class Lost < ApplicationRecord
  default_scope { order(created_at: :desc) }
  belongs_to :user
  validates :title, :description, :lost_at, presence: true
  has_rich_text :description
end
