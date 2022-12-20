class Mage < ApplicationRecord
  enum elemental_power: {
    nul: 0,
    fire: 10,
    water: 20,
    earth: 30,
    air: 40
  }
  has_many :membership
end
