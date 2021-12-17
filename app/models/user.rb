class User < ApplicationRecord
  broadcasts_to :itself
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  has_many :losts, dependent: :destroy
end
