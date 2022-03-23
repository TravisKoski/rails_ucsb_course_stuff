class CreateActiveQuarters < ActiveRecord::Migration[7.0]
  def change
    create_table :active_quarters do |t|
      t.string :currentQuarter

      t.timestamps
    end
  end
end
