class AddOneUpsTable < ActiveRecord::Migration
  def change
    create_table :ups do |t|
      t.string :declaration
      t.string :name
      t.string :twitter_url
      t.integer :money
      t.timestamps
    end
  end
end
