class Photo < ApplicationRecord
  belongs_to :alternative
  mount_uploader :photo, PhotoUploader
end
