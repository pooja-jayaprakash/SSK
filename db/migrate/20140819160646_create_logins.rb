class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :name
      t.string :password
      t.string :salt

      t.timestamps
    end
  end
end
