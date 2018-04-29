class Person < ApplicationRecord
  has_many :items
  has_many :skills
  has_many :sites
  has_many :projects
  has_many :schools
  has_many :jobs
end
