class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :user_orgs
  has_many :shifts
  has_many :organizations, through: :user_orgs
end
