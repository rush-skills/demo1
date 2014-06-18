class CreateForm2s < ActiveRecord::Migration
  def change
    create_table :form2s do |t|
      t.text :q1
      t.string :q2
      t.text :q3
      t.string :q4
      t.integer :user_id

      t.timestamps
    end
  end
end
