# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :decks
  has_many :cards, through: :decks
end
