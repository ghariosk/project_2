class AddLanguageToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :language, :string
    add_column :projects, :showpage, :string
    add_column :projects, :startdate, :datetime

  end
end
