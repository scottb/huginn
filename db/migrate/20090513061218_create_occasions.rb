class CreateOccasions < ActiveRecord::Migration
  def self.up
    create_table :occasions do |t|
      t.string :name
      t.date :start_date

      t.timestamps
    end
  end

  def self.down
    drop_table :occasions
  end
end
