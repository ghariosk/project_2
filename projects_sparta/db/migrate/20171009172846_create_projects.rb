class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :desc
      t.string :image
      t.string :git
      t.boolean :approved

      t.timestamps
    end
  end
end
