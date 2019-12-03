class User < ApplicationRecord
  has_many :alternatives # no dependent since if a user leaves the plateform, we want to keep his DIY alive

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
