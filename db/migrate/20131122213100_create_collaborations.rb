class CreateCollaborations < ActiveRecord::Migration
  def change
    create_table :collaborations, :id => false do |t|
      t.integer :user_id
      t.integer :wiki_id

      t.timestamps
    end
  end
end
