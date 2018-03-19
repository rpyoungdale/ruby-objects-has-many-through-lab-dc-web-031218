require_relative './appointment.rb'
require_relative './patient.rb'

class Doctor
  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointments << appointment
    appointment.doctor = self
  end

  def patients
    @patients = []
    @appointments.each {|appointment| @patients << appointment.patient}
    @patients
  end
end
