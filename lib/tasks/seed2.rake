require 'csv'
namespace :db do
  namespace :seed2 do
    desc "Import NOAA weather station data"
    task :import_noaa_stations => :environment do

      filename = File.join(Rails.root, 'db', 'data_files', 'stations.csv')
      CSV.foreach(filename, :headers => true) do |row|
        puts $. if $. % 10000 == 0
          data = {
            station_code: row["StationId"],
            latitude: row["Latitude"],
            longitude: row["Longitude"],
            elevation: row["Elevation"],
            name: row["Name"]
          }
          WeatherStation.create(data)
      end
    end
  end
end
