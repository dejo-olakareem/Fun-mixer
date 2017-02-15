class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
    	t.date :start_date
    	t.time :start_time
    	t.date :end_date
    	t.time :end_time
    	t.string :location


      t.timestamps
    end
  end
end
