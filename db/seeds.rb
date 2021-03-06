# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(id: 1, name: "takahashi")


# if Rails.env == 'development'
#     (1..5).each do |i|
#         Health.create(id: "#{i}" , date: "2021-06-#{i}", temperature_morning: 36.8, temperature_night: 36.6, cough: 'YES', dyspnea: 'YES', nasal: 'YES', throat: 'YES', headache: 'YES', diarrhea: 'YES', taste: 'YES', smell: 'NO', ather: '', user_id: 1)
#     end
# end


if Rails.env == 'development'
    (1..10).each do |i|
        Actionlog.create(id: "#{i}", date: "2021-06-1", group_num: "#{i}", start_time: 11-30, end_time: 15-45, destination: "池袋本社", transportation: "電車", departure: "東高円寺", arrival: "池袋", attendees: "なし", attendees_details: "なし", other: 'その他', user_id: 1)
    end
end