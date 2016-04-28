class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.string :follower
      t.string :following

      t.timestamps
    end
  end
end
