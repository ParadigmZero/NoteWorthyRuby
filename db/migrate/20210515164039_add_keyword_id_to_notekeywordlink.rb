class AddKeywordIdToNotekeywordlink < ActiveRecord::Migration[6.1]
  def change
    add_column :notekeywordlinks, :keyword_id, :integer
    add_index :notekeywordlinks, :keyword_id
  end
end
