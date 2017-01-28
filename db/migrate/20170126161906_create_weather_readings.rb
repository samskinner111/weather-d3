class CreateWeatherReadings < ActiveRecord::Migration[5.0]
  def change
    create_table :weather_readings do |t|
      t.string :station
      t.date :reading_date
      t.string :reading_type
      t.integer :reading_value
      t.string :measurement_flag

      t.timestamps
    end
  end
end
