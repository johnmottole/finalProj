class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :words
      t.string :author
      t.string :user

    t.timestamps :timee
    end
  end
end
