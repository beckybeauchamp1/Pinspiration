class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title
      t.string :photo_url
      t.references :user, index: true, foreign_key: true
    end
  end
end
