class Lost < ApplicationRecord
  belongs_to :user
  broadcasts_to :user
  validates :title, :description, :lost_at, presence: true
  has_rich_text :description

  def toggle_find
    self.finded = !self.finded
    self.save
  end
end
