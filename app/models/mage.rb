class Mage < ApplicationRecord
  enum elemental_power: {
    fire: 'fire',
    water: 'water',
    earth: 'earth',
    air: 'air'
  }
  has_many :membership
end
cd