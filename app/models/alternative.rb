class Alternative < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  has_many :upvotes, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :ingredients, presence: true
  validates :difficulty, presence: true
  validates :prep_time, presence: true
  mount_uploader :photo, PhotoUploader

  acts_as_taggable

  acts_as_taggable_on :alimentations

  $list_of_tags = ["Bio", "Vegan", "Gluten Free", "Vegetarian", "No plastic", "Local", "Zero waste"]

  include PgSearch::Model
  pg_search_scope :search_alternative,
    against: [:title, :description],
    associated_against: {
    alimentations: [:name], # Recherche dans la table tag alimentation
  },
    using: {

      tsearch: { prefix: true }
    }
end
