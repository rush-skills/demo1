class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :country
      t.string :start_date
      t.string :end_date
      t.text :brief_description
      t.text :job_description
      t.string :work_information
      t.string :skills
      t.string :language
      t.text :other_details
      t.string :apply_date

      t.timestamps
    end
  end
end
