class Worker < ApplicationRecord

has_many :worker_appointments
  has_many :appointments, :through => :worker_appointments
has_one :dock, :through =>  :appointments

validates :name, presence: true
validates :name, uniqueness: true
validates :address, presence: true
validates :city, presence: true
validates :state, presence: true
validates :zip, presence: true, numericality: true
validates :payrate, presence: true, numericality: true

  accepts_nested_attributes_for :appointments


end
