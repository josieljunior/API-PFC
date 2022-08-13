class AddCategoryToExpanses < ActiveRecord::Migration[7.0]
  def change
    add_column :expanses, :category, :string
  end
end
