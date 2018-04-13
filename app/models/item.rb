class Item < ApplicationRecord
  belongs_to :person
  scope :skills, -> { where type_of: "skill" }
end
