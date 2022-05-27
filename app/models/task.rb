# frozen_string_literal: true

class Task < ApplicationRecord
  validates :name, :description, presence: true

  belongs_to :user
end
