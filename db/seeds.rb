# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

BehaviorRank.destroy_all
BehaviorRank.create( rank: 7, colorName: :pink, colorCode: 0, name: "Outstanding" );
BehaviorRank.create( rank: 6, colorName: :purple, colorCode: 0, name: "Great Job" );
