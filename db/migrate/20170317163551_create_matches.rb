class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.string :matchUrid, unique: true, null: false
      t.string :queueType
      t.string :region
      t.integer :mapId
      t.integer :matchCreation, :limit => 8
      t.string :matchMode
      t.integer :matchDuration
      t.string :matchType
      t.json :teams
      t.json :participants
      t.timestamps
    end
  end
end
