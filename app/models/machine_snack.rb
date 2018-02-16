class MachineSnack < ApplicationRecord
  belongs_to :machine, dependent: :destroy
  belongs_to :snack, dependent: :destroy
end
