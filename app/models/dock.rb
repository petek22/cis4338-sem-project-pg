class Dock < ApplicationRecord


  has_many :workers, :through => :appointments
  has_many :appointments

  validates :name, presence: true
  validates :name, uniqueness: true

end
