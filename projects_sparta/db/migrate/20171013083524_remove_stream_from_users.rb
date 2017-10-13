class RemoveStreamFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :stream, :string
    remove_column :users, :avatar, :string
    remove_column :users, :dateofbirth, :datetime
    remove_column :users, :startdate, :datetime
    remove_column :users, :academy, :string
    remove_column :users, :language, :string
  end
end
