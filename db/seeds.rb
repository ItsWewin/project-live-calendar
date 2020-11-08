# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# generate Arrangement
# start_dt = Time.now.in_time_zone('Asia/Shanghai').beginning_of_day
# end_dt = DateTime.parse('2020-12-12 00:00:00')

loop do

  [9, 10, 11, 12, 13, 14, 15, 16, 17].each do |h|
    arr_start = start_dt  + h * 1.hour
    arr_end = arr_start + 1.hour
    puts "arr_start #{arr_start}"
    puts "arr_end #{arr_end}"

    Arrangement.create(start_time: arr_start + 8.hour, end_time: arr_end + 8.hour, published: true)
  end

  start_dt += 1.day

  break if start_dt > end_dt
end

# generate user
['Nick', 'Jone', 'Yoyo', 'Ada'].each do |n|
  User.create(name: n, role: 'partner', email: "#{n}.yc.com", phone: "1871056#{rand(9999)}", auth_code: rand(999999))
end