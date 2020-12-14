class InitialMigration < ActiveRecord::Migration[6.0]
  def change
    create_table :problems do |t|
      t.integer :m, null: false
      t.integer :n, null: false
      t.string :matrix, null: false
      t.string :b, null: false
      t.timestamps
    end

    create_table :solutions do |t|
      t.references :problem
      t.string :answer, null: false
      t.timestamps
    end

  end
end
