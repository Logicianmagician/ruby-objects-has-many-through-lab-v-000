class Doctor

  attr_reader :appointments
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointments.doctor = self
  end

end
