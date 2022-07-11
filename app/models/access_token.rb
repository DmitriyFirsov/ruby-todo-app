# frozen_string_literal: true

class AccessToken < ApplicationRecord
  validates :expired, :user_agent, presence: true

  belongs_to :user
end
