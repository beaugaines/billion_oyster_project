# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).pu
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

u = User.new(first_name: 'Guy', last_name: 'User', email: 'user@bop.com', password: ENV['USER_PASSWORD'], password_confirmation: ENV['USER_PASSWORD'])
a = User.new(first_name: 'Admin', last_name: 'User', email: 'admin@bop.com', password: ENV['ADMIN_PASSWORD'], password_confirmation: ENV['ADMIN_PASSWORD'], admin: true)

users = [u, a]

users.each do |user|
  user.skip_confirmation!
  user.save
end


