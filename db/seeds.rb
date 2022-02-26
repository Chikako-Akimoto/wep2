# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

CSV.foreach('C:/Users/NDPC031/wep2/calendar.csv', headers: true) do |row|
  Calendar.create(
      dates:     row['dates'],
      working_day_flag:        row['working_day_flag']
  )
end
