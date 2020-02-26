class User < ApplicationRecord
  has_secure_password
  has_many :lists, dependent: :destroy
  has_many :tasks, through: :lists
end
