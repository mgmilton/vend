class Machine < ApplicationRecord
  validates_presence_of :location
  belongs_to :owner
  has_many :machine_snacks, dependent: :nullify
  has_many :snacks, through: :machine_snacks
end
