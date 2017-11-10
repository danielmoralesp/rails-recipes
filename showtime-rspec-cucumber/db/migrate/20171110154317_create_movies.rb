class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.date :showtime_date
      t.time :showtime_time

      t.timestamps
    end
  end
end
