class Doctor < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments

  def doctor_name
    "Dr. #{self.first_name} #{self.last_name}"
  end
end
