# frozen_string_literal: true

class User < ApplicationRecord
  include BCrypt

  validates :name, :email, :password, presence: true
  validates :email, uniqueness: true

  has_many :tasks
  has_many :access_token

  def password
    password_hash
  end

  def password=(new_password)
    self.password_hash = Password.create(new_password)
  end
end
