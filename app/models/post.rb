class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  scope :published, -> { where(published: true) }
  scope :featured, -> { where(featured: true) }
  scope :draft, -> { where(published: false) }
end
