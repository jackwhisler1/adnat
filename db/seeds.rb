# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# orgs = Organization.create([
#   {
#     name: "Bob's Burgers", 
#     hourly_rate: 10.0
#   },
#   {
#     name: "Chuck E. Cheese",
#     hourly_rate: 12.50
#   },
#   {
#     name: "Shrek's Swamp Cleaning Service",
#     hourly_rate: 17.25
#   }
# ])

# employees = User.create([
#   {
#     "name": "The Gingerbread Man",
#     "email": "ginger@bread.com",
#     "password": "password",
#     "password_confirmation": "password"
#   },
#   {
#     "name": "Leonardo Da Vinci",
#     "email": "love2paint@gmail.com",
#     "password": "password",
#     "password_confirmation": "password"
#   },
#   {
#     "name": "Jimmy Neutron",
#     "email": "jimmy@aol.com",
#     "password": "password",
#     "password_confirmation": "password"
#   },
#   {
#     "name": "Patrick Star",
#     "email": "pat@starfish.com",
#     "password": "password",
#     "password_confirmation": "password"
#   },
#   {
#     "name": "Dracula",
#     "email": "vampireweekend@gmail.com",
#     "password": "password",
#     "password_confirmation": "password"
#   },
# ])

# # Create shifts
# shifts = Shift.create([
#   {
#     "user_id": 6,
#     "organization_id": 1  
#   },
#   {
#     "user_id": 6,
#     "organization_id": 2  
#   },
#   {
#     "user_id": 2,
#     "organization_id": 1  
#   },
#   {
#     "user_id": 3,
#     "organization_id": 4  
#   },
#   {
#     "user_id": 4,
#     "organization_id": 4 
#   },
#   {
#     "user_id": 5,
#     "organization_id": 1  
#   },
#   {
#     "user_id": 9,
#     "organization_id": 2  
#   },
#   {
#     "user_id": 10,
#     "organization_id": 2  
#   },
#   {
#     "user_id": 10,
#     "organization_id": 11
#   },
#   {
#     "user_id": 11,
#     "organization_id": 3  
#   }
# ])

breaks = Break.create([
  {
    shift_id: 1,
    duration: 10
  },
  {
    shift_id: 3,
    duration: 10
  },
  {
    shift_id: 3,
    duration: 20
  },
  {
    shift_id: 6,
    duration: 60
  },
  {
    shift_id: 6,
    duration: 10
  },
  {
    shift_id: 9,
    duration: 25
  },
])
