class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :o_text
      t.text :e_text
      t.integer :user_id

      t.timestamps
    end
  end
end
