class CreateZahls < ActiveRecord::Migration
  def change
    create_table :zahls do |t|
      t.integer :zahl

      t.timestamps
    end
  end
end
