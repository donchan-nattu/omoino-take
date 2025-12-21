class CreateBurnEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :burn_events do |t|
      t.references :session, null: false, foreign_key: true
      t.datetime :burned_at

      t.timestamps
    end
  end
end
