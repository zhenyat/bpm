json.extract! note, :id, :measured_at, :systolic, :diastolic, :heart_rate, :afib, :state, :statin_dose, :euthyrox_dose, :weight, :comment, :created_at, :updated_at
json.url note_url(note, format: :json)
