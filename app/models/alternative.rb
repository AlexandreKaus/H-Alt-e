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

  $list_of_tags = ["Bio", "Vegan", "Gluten Free"]


  include PgSearch::Model
  pg_search_scope :search_alternative,
    against: [:title, :description],
    using: {

      tsearch: { prefix: true }
    }
      # associated_against: {
      #   director: [ :first_name, :last_name ]
      # },
      # using: {

      # to implement with taggable ??
end
