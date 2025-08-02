class CreateTweets < ActiveRecord::Migration[7.1]
  def change
    create_table :tweets do |t|
      t.date :day
      t.text :about
      t.float :time

      t.timestamps
    end
  end
end
