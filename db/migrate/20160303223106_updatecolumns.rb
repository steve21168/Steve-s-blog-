class Updatecolumns < ActiveRecord::Migration
  def change
    add_column :posts, :body, :text 
    remove_column :posts, :text
  end
end
