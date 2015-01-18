class CreateSliderimages < ActiveRecord::Migration
  def change
    create_table :sliderimages do |t|
      t.string :title
      t.string :caption
      t.string :url
      t.string :picture

      t.timestamps null: false
    end
  end
end
