class Card < ApplicationRecord
  validates :title, presence: true
  belongs_to :deck
end
