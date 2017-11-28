class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.float :funding_goal
      t.date :start_date
      t.date :end_date
      t.integer :user_id
      t.integer :project_type_id
      t.index ["project_type_id"], name: "index_projects_on_project_type_id"

      t.timestamps
    end
  end
end
