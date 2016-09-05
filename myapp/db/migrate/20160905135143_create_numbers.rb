class CreateNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :numbers do |t|
      t.integer :number
      t.integer :position

      t.timestamps
    end
  end
end
