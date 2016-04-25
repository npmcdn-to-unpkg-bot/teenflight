class CreateIndices < ActiveRecord::Migration
  def change
    create_table :indices do |t|
      t.string :eventname

      t.timestamps null: false
    end
  end
end
