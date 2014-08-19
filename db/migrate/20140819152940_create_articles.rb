class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :e_text
      t.text :o_text
      t.text :user_id

      t.timestamps
    end
  end
end
