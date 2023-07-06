# frozen_string_literal: true

class Plant < ApplicationRecord
  has_many :aliases
end
