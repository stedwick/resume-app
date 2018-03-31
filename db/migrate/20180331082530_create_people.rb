class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.text :about
      t.string :location
      t.string :github
      t.string :linkedin
      t.string :facebook
      t.string :twitter
      t.text :career_blurb
      t.text :skills_blurb
      t.text :education_blurb
      t.text :work_blurb
      t.text :projects_blurb
      t.text :old_blurb
      t.text :personal_blurb
      t.text :contact_blurb
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
