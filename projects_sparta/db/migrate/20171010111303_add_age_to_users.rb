class AddAgeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :admin, :boolean
    add_column :users, :avatar, :string
    add_column :users, :dateofbirth, :datetime
    add_column :users, :startdate, :datetime
    add_column :users, :academy, :string
    add_column :users, :stream, :string
    add_column :users, :language, :string
  end
end
