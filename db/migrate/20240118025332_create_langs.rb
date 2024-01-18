class CreateLangs < ActiveRecord::Migration[7.1]
  def change
    create_table :langs do |t|
      t.string :program
      t.string :difficulty
      t.text :comment

      t.timestamps
    end
  end
end
