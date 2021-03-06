class CreateProBuilds < ActiveRecord::Migration[5.0]
  def change
    create_table :pro_builds do |t|
      t.string :matchUrid
      t.integer :matchCreation, :limit => 8
      t.integer :spell1Id
      t.integer :spell2Id
      t.integer :championId
      t.string :highestAchievedSeasonTier
      t.string :region
      t.json :masteries
      t.json :runes
      t.json :stats
      t.json :itemsOrder
      t.json :skillsOrder
      t.belongs_to :pro_summoner
      t.timestamps
    end
  end
end
