class CreateIncomes < ActiveRecord::Migration[7.0]
  def change
    create_table :incomes do |t|
      t.string :description
      t.float :value
      t.date :date

      t.timestamps
    end
  end
end
