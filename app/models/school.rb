class School < ApplicationRecord
  belongs_to :archmage
  has_many :membership
end
