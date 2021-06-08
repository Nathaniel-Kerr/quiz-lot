class ChangeCategorysToCategories < ActiveRecord::Migration[6.1]
  def change
    rename_table :categorys, :categories
  end
end
