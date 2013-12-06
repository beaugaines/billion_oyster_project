# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).pu
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u = User.new(email: 'user@bop.com', password: ENV['USER_PASSWORD'], password_confirmation: ENV['USER_PASSWORD'])
a = User.new(email: 'admin@bop.com', password: ENV['ADMIN_PASSWORD'], password_confirmation: ENV['ADMIN_PASSWORD'])

%w(u a).each do |account|
  account.skip_confirmation!
  account.save
end


