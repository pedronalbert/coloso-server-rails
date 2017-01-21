class CreateProSummoners < ActiveRecord::Migration[5.0]
  def change
    create_table :pro_summoners do |t|
      t.integer :summonerId
      t.string :region
      t.integer :lastCheck, :limit => 8
      t.belongs_to :pro_player
      t.timestamps
    end
  end
end
