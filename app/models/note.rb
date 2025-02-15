class Note < ApplicationRecord
  validates :measured_at,   presence: true
  validates :systolic,      presence: true
  validates :diastolic,     presence: true
  validates :heart_rate,    presence: true
  validates :afib,          presence: true
  validates :state,         presence: true
  validates :statin_dose,   presence: true
  validates :euthyrox_dose, presence: true

  enum :afib, {no: 0, yes: 1, unavailable: 2}
  enum :state, {good: 0, satisfactory: 1, bad: 2, undefined: 3}
  # enum :statin_dose, {'small(40)': 40, 'normal(80)': 80, '(120)': 120, 'double(160)': 160}
  enum :statin_dose, %w(20 40 80 120 160), default: 80
  enum :euthyrox_dose, %w(25 50 62.5 66 75 81.5 88 100 112 125 137 150), default: 66

  scope :of_current_month, -> { where("measured_at >= ? AND measured_at <= ?", Time.now.at_beginning_of_month, Time.now.at_end_of_month) }
end
