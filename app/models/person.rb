class Person < ApplicationRecord
  has_many :items
  has_many :skills
  has_many :sites
end
