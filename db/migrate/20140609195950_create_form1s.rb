class CreateForm1s < ActiveRecord::Migration
  def change
    create_table :form1s do |t|
      t.string :q1
      t.text :q2
      t.text :q3
      t.integer :user_id

      t.timestamps
    end
  end
end
