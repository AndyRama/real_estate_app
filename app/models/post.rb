class Post < ApplicationRecord
  has_one_attached :image

  # validation pour le formulaire creation d'une propriété

  validates :title, presence: true
  validates :url, presence: true
  validates :summary, presence: true
  validates :image, presence: true
  validates :body, presence: true

  # Scope post

  scope :active, -> { where(active: true) }
  scope :latest, -> { order created_at: :desc }
end