# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Plan.create(:title => 'Default', :price => 0, :description => 'Beta testing is so cool that it\'s free')
Client.create(:display_name => 'Empowebo.com S.A', :firstname => 'Bob' , :lastname => 'Hochmut', :company => 'Empowebo.com S.A', :adress => '13 rue des jardiniers', :zipcode => 'L-1835', :city => 'Luxembourg' , :land => 'Luxembourg', :tel => '+352 26 14 48', :tva => 'SAMPLE', :plan => 1)
