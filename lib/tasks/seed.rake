require 'csv'
namespace :db do
  namespace :seed do
    desc "Import NOAA Weather CSV"
    task :import_noaa_weather => :environment do

      filename = File.join(Rails.root, 'db', 'data_files', '1836.csv')
      CSV.foreach(filename, :headers => true) do |row|
        puts $. if $. % 10000 == 0
        data = {
          station: row[0],
          reading_date: row[1],
          reading_type: row[2],
          reading_value: row[3],
          measurement_flag: row[4]
        }
        WeatherReading.create(data)
      end
    end
  end  
end
