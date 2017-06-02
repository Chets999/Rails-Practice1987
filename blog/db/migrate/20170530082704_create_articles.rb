class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.date :publish_date
      t.integer :category_id
      t.timestamps null: false
    end
  end
end
