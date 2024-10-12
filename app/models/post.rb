class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  scope :published, -> { where(published: true).order(created_at: :desc) }
  scope :featured, -> { where(featured: true).order(created_at: :desc) }
  scope :draft, -> { where(published: false).order(created_at: :desc) }
end
