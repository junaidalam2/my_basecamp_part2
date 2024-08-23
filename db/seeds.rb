# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


=begin

user = User.create! :first_name => 'Junaid', :last_name => 'Alam', :email => 'junaid.alam2@gmail.com', :password => 'password1', :password_confirmation => 'password1', :department => 'Fake Deparment', :profile => 'admin', :position => "World's Best Boss"
user = User.create! :first_name => 'FakeFirstName1', :last_name => 'FakelastName1', :email => 'fakeaccount1@gmail.com', :password => 'password1', :password_confirmation => 'password1', :department => 'Fake Deparment', :profile => 'user', :position => 'Fake Position'
user = User.create! :first_name => 'FakeFirstName2', :last_name => 'FakelastName2', :email => 'fakeaccount2@gmail.com', :password => 'password1', :password_confirmation => 'password1', :department => 'Fake Deparment', :profile => 'user', :position => 'Fake Position'
user = User.create! :first_name => 'FakeFirstName3', :last_name => 'FakelastName3', :email => 'fakeaccount3@gmail.com', :password => 'password1', :password_confirmation => 'password1', :department => 'Fake Deparment', :profile => 'user', :position => 'Fake Position'
user = User.create! :first_name => 'FakeFirstName4', :last_name => 'FakelastName4', :email => 'fakeaccount4@gmail.com', :password => 'password1', :password_confirmation => 'password1', :department => 'Fake Deparment', :profile => 'user', :position => 'Fake Position'
user = User.create! :first_name => 'FakeFirstName5', :last_name => 'FakelastName5', :email => 'fakeaccount5@gmail.com', :password => 'password1', :password_confirmation => 'password1', :department => 'Fake Deparment', :profile => 'user', :position => 'Fake Position'
user = User.create! :first_name => 'FakeFirstName6', :last_name => 'FakelastName6', :email => 'fakeaccount6@gmail.com', :password => 'password1', :password_confirmation => 'password1', :department => 'Fake Deparment', :profile => 'user', :position => 'Fake Position'
user = User.create! :first_name => 'FakeFirstName7', :last_name => 'FakelastName7', :email => 'fakeaccount7@gmail.com', :password => 'password1', :password_confirmation => 'password1', :department => 'Fake Deparment', :profile => 'user', :position => 'Fake Position'
user = User.create! :first_name => 'FakeFirstName8', :last_name => 'FakelastName8', :email => 'fakeaccount8@gmail.com', :password => 'password1', :password_confirmation => 'password1', :department => 'Fake Deparment', :profile => 'user', :position => 'Fake Position'
user = User.create! :first_name => 'FakeFirstName9', :last_name => 'FakelastName9', :email => 'fakeaccount9@gmail.com', :password => 'password1', :password_confirmation => 'password1', :department => 'Fake Deparment', :profile => 'user', :position => 'Fake Position'
user = User.create! :first_name => 'FakeFirstName10', :last_name => 'FakelastName10', :email => 'fakeaccount10@gmail.com', :password => 'password1', :password_confirmation => 'password1', :department => 'Fake Deparment', :profile => 'admin', :position => 'Fake Position'

=end
