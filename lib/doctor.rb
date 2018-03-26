class Doctor

  attr_reader :appointments
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end


  def patients
    self.appointment.collect do |appointment|
      appointment.patients
    end
  end

end
