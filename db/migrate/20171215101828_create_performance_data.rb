class CreatePerformanceData < ActiveRecord::Migration[5.0]
  def change
    execute 'CREATE EXTENSION IF NOT EXISTS hstore'
    create_table :performance_data do |t|
      t.references :user, foreign_key: true
      t.hstore :data

      t.timestamps
    end
  end
end
