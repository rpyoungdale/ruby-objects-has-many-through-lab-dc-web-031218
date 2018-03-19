require_relative './doctor.rb'
require_relative './patient.rb'
require "pry"

class Appointment
attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    doctor.add_appointment(self)
  end

end
