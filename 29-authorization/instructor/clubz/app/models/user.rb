class User < ApplicationRecord
  has_secure_password

  has_many :clubs
  belongs_to :role

  validates :name, presence: true, uniqueness: true
end
