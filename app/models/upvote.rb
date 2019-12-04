class Upvote < ApplicationRecord
  belongs_to :alternative
  belongs_to :user
  validates :user_id, uniqueness: { scope: :alternative }
end
