class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest
  validates :rating, length: { minimum: 1, maximum: 5}
end
