class CreateSessionStats < ActiveRecord::Migration[7.0]
  def change
    create_table :session_stats do |t|
      t.references :session, null: false, foreign_key: true
      t.integer :burn_count, null: false, default: 0
      t.integer :total_days, null: false, default: 0
      t.datetime :last_used_at
      t.integer :growth_value, null: false, default: 0
      t.integer :flame_level, null: false, default: 0

      t.timestamps
    end

    # add_index :session_stats, :session_id, unique: true
  end
end
