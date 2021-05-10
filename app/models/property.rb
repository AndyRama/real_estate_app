class Property < ApplicationRecord
  belongs_to :user

  has_one_attached :photo
  has_one_attached :image_int
  has_one_attached :image_ext

  # Geocode adr => latitude,longitude

  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?

  # validation for form creation property posts

  validates :name, presence: true
  validates :address, presence: true
  validates :photo, presence: true
  validates :image_int, presence: true
  validates :image_ext, presence: true
  validates :status, presence: true
  validates :price, presence: true
  validates :rooms, presence: true
  validates :bathrooms, presence: true
  validates :parking_spaces, presence: true
  validates :available_date, presence: true
  validates :details, presence: true
  validates :intro, presence: true

  # Scope properties

  scope :latest, -> { order created_at: :desc }

  scope :sold, -> { where(for_sale: true, status: "sold") }
  scope :for_sale, -> { where(for_sale: true, status: "available") }
  scope :leased, -> { where(for_sale: false, status: "leased") }
  scope :for_rent, -> { where(for_sale: false, status: "available") }
end
