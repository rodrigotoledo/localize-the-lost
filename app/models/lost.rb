class Lost < ApplicationRecord
  belongs_to :user
  validates :title, :description, :lost_at, presence: true
  has_rich_text :description
end
