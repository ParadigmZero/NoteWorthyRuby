class AddNoteIdToNotekeywordlink < ActiveRecord::Migration[6.1]
  def change
    add_column :notekeywordlinks, :note_id, :integer
    add_index :notekeywordlinks, :note_id
  end
end
