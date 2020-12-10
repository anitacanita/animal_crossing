namespace :csv do

  desc "Import CSV Data"
  task :import => :environment do

    require 'csv'

    csv_file_path = 'lib/tasks/villagers.csv'

    CSV.foreach(csv_file_path, headers: true) do |row|
      row = Villager.create!({
        name: row[0],
        species: row[1],
        gender: row[2],
        personality: row[3],
        subtype: row[4],
        hobby: row[5],
        birthday: row[6],
        catchphrase: row[7],
        favorite_song: row[8],
        favorite_saying: row[9],
        style_1: row[10],
        style_2: row[11],
        color_1: row[12],
        color_2: row[13]
      })
      puts "Success!"
    end
  end
end
