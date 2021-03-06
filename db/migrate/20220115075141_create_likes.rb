
class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.timestamps
      t.references :author, foreign_key: { to_table: 'users' }, null: false
      t.references :post, foreign_key: true, null: false
    end
  end
  
end
