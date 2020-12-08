class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :summary
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.string  :cid
      t.timestamps
    end
  end
end
