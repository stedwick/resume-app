class AddProfilePicsAndBackgroundImgsToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :profile_pic, :string
    add_column :people, :background_img, :string
  end
end
