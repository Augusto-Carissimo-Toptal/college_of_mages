class Archmage < ApplicationRecord
  validates_length_of :title, maximum: 50
  has_many :school
end
