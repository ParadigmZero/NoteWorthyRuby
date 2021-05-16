class CreateNotekeywordlinks < ActiveRecord::Migration[6.1]
  def change
    create_table :notekeywordlinks do |t|

      t.timestamps
    end
  end
end
