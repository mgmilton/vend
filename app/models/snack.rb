class Snack < ApplicationRecord
  validates_presence_of :name, :price
  has_many :machine_snacks, dependent: :nullify
  has_many :machines, through: :machine_snacks

  def to_dollar
    (price/100).round(5)
  end

  def self.average_price
    (average(:price)/100).round(5)
  end
end
