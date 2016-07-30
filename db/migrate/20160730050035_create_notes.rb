class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :word

      t.timestamps 
    end
  end
end
