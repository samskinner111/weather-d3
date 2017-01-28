class CreateWeatherStations < ActiveRecord::Migration[5.0]
  def change
    create_table :weather_stations do |t|
      t.string :station_code
      t.float :latitude
      t.float :longitude
      t.float :elevation
      t.string :name

      t.timestamps
    end
    add_index :weather_stations, :station_code
  end
end
