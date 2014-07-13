# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
desmond = User.create(username:"desmond", password:"password", email:"desmond@mySchool.edu", school:"Redwood Day School", grade:9)
george = User.create(username:"george", password:"12345", email:"george@mySchool.edu", school:"My School", grade:9)
Post.create(content:"I am having trouble fitting in at school.", user:desmond, upvotes:10)
Post.create(content:"The teacher won't call on me in class.", user:george)
Post.create(content:"The kids in school use racial slurs.", user:george)
