class Person < ApplicationRecord
  has_many :items, -> { order order: :asc }
end
