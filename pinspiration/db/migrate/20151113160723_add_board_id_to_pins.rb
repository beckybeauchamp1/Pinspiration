class AddBoardIdToPins < ActiveRecord::Migration
  def change
    add_reference :pins, :board, index:true, foreign_key:true
  end
end
