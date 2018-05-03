class Person < ApplicationRecord
  has_many :items
  has_many :skills
  has_many :sites
  has_many :projects
  has_many :schools
  has_many :jobs
  has_many :interests

  def resume_file
    name.sub(' ', '_') + "_resume.pdf"
  end

  def vcard_file
    name.sub(' ', '_') + "_vCard.vcf"
  end
  
end
