class Item < ApplicationRecord
  belongs_to :person
  scope :skills, -> { where type_of: "skill" }
  scope :sites, -> { where type_of: "site" }
end
