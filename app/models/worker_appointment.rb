class WorkerAppointment < ApplicationRecord

  belongs_to :worker
  belongs_to :appointment

  validates_uniqueness_of :worker_id, :scope => :appointment_id


end
