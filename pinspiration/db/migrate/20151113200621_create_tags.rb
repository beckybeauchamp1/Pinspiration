class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :pin, index:true, foreign_key:true
    end
  end
end
