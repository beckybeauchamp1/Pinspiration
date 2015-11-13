class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.string :description
      t.string :photo_url
      t.references :user, index:true, foreign_key:true
    end
  end
end
