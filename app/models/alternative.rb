class Alternative < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :ingredients, presence: true
  validates :difficulty, presence: true
  validates :prep_time, presence: true

end
