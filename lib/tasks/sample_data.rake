require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    admin=User.create!(:first_name => "Admin",
                 :last_name => "Admin",
                 :email => "admin@admin.com",
                 :password => "adminadmin",
                 :password_confirmation => "adminadmin")
    admin.toggle!(:admin)
    no_admin=User.create!(:first_name => "User",
                 :last_name => "User",
                 :email => "user@user.com",
                 :password => "useruser",
                 :password_confirmation => "useruser")
    100.times do |n|
      first_name  = Faker::Name.first_name
      last_name  = Faker::Name.last_name
      email = "example-#{n+1}@crazytrip.org"
      password  = "password"
      User.create!(:first_name => first_name,
                   :last_name => last_name,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
    end
  end
end

