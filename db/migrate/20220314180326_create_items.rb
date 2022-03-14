class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :box_id
      t.string :title

      t.timestamps
    end
  end
end
