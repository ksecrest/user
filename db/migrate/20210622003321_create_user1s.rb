class CreateUser1s < ActiveRecord::Migration[6.1]
  def change
    create_table :user1s do |t|
      t.date :joined
      t.string :username
      t.string :membership

      t.timestamps
    end
  end
end
