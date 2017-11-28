class CreateProjectCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :project_categories do |t|
      t.string :project_type

      t.timestamps
    end
  end
end
