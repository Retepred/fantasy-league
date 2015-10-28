# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Team.delete_all
team1 = Team.create!(name: 'Edinburgers', founded: '1 March 1872', mascot: 'Sparky')
Team.create!(name: 'Glasgow Gooneys', founded: '17 March 1862', mascot: 'Wally')
Team.create!(name: 'Dundee Dumpsters', founded: '6 March 1872', mascot: 'Spike')
Team.create!(name: 'Abderdonian Asses', founded: '1 March 1892', mascot: 'Oil')

Player.create!(name: 'Peter', position: 'Seeker', species: 'Elf', team_id: team1.id)
Player.create!(name: 'Nevin', position: 'Chaser', species: 'Sprite', team_id: team1.id)