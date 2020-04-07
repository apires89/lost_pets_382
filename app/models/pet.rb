class Pet < ApplicationRecord
  #requires a name in order to create a Pet
  validates :name, presence: true
  validates :name, length: { minimum: 5 }
  #validation for the species to be include in a group of species
  validates :species, inclusion: { in: %w(dog cat peacock snake turtle) }
end
