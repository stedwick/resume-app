class Item < ApplicationRecord
  belongs_to :person
  default_scope { order order: :asc }
end
