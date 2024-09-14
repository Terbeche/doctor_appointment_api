# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


User.create(username: "john_doe", is_admin: false)
User.create(username: "admin_user", is_admin: true)

Doctor.create(name: "Dr. Smith", specialty: "Cardiology")
Doctor.create(name: "Dr. Johnson", specialty: "Pediatrics")

Reservation.create(user_id: 1, doctor_id: 1, date: Date.today + 7, city: "New York")
Reservation.create(user_id: 2, doctor_id: 2, date: Date.today + 14, city: "Los Angeles")