class Appointment < ApplicationRecord
  has_many :worker_appointments
  has_many :workers, :through => :worker_appointments
  belongs_to :vendor
  belongs_to :dock

   validates_uniqueness_of :dock_id, :scope => [:start_date,:start_time]
  validates :start_date, presence: true
  validates :start_time, presence: true
  validates :dock_id, presence: true
  validates :vendor_id, presence: true

  validate :start_date_before_today

  def start_date_before_today
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, " can't be in the past")
    end
  end




  accepts_nested_attributes_for :workers


end
