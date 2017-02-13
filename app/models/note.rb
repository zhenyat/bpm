class Note < ApplicationRecord
  validates :measured_at, presence: true
  validates :sys,         presence: true
  validates :dia,         presence: true
  validates :pulse,       presence: true
  validates :artm,        presence: true
  validates :trials,      presence: true
  validates :feeling,     presence: true

  enum artm:      %w(N Y)
  enum feeling:   %w(G S B U)
end
