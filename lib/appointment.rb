class Appointment

  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    patient.add_appointment(self)
  end

  def doctor(doctor)
    self.doctor = doctor
  end

end
