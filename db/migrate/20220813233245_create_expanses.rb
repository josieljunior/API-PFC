class CreateExpanses < ActiveRecord::Migration[7.0]
  def change
    create_table :expanses do |t|
      t.string :description
      t.float :value
      t.date :date

      t.timestamps
    end
  end
end
