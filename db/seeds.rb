10.times do
  doctor = Doctor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
 
  10.times do 
    user = User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
    )

    Appointment.create(
      doctor_id: doctor.id,
      user_id: user.id,
      date: Faker::Date.forward
    )
  end
end

# 3.times do
#   User.create(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name
#   )
#   Doctor.create(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name
#   )
# end
# Appointment.create(
#   doctor_id: Doctor.first.id,
#   user_id: User.first.id,
#   date: Faker::Date.forward
# )
# Appointment.create(
#   doctor_id: Doctor.last.id,
#   user_id: User.last.id,
#   date: Faker::Date.forward
# )