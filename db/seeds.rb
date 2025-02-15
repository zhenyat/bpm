begin
  if (Note.present? and not Note.exists?)
    Note.create!([
      {measured_at: '2025-02-04 09:00', systolic: 139, diastolic: 82, heart_rate: 60, afib: 2, state: 3, statin_dose: 2, euthyrox_dose: 4},
      {measured_at: '2025-02-04 09:05', systolic: 127, diastolic: 79, heart_rate: 60, afib: 2, state: 3, statin_dose: 2, euthyrox_dose: 4},
      {measured_at: '2025-02-05 09:00', systolic: 129, diastolic: 79, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 4},
      {measured_at: '2025-02-05 09:05', systolic: 125, diastolic: 77, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 4},
      {measured_at: '2025-02-05 23:30', systolic: 127, diastolic: 83, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 4},
      {measured_at: '2025-02-05 23:35', systolic: 113, diastolic: 74, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 4},
      {measured_at: '2025-02-06 08:30', systolic: 132, diastolic: 81, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 4, comment: "п/лев.лопат."},
      {measured_at: '2025-02-06 08:35', systolic: 127, diastolic: 77, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 4},
      {measured_at: '2025-02-06 22:30', systolic: 121, diastolic: 75, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 4},
      {measured_at: '2025-02-06 22:35', systolic: 111, diastolic: 73, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 4},
      {measured_at: '2025-02-07 08:00', systolic: 127, diastolic: 81, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3, comment: "слегка слева спереди"},
      {measured_at: '2025-02-07 08:05', systolic: 122, diastolic: 80, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-07 15:00', systolic: 122, diastolic: 76, heart_rate: 60, afib: 1, state: 1, statin_dose: 2, euthyrox_dose: 3, comment: "после сп/кл"},
      {measured_at: '2025-02-07 21:00', systolic: 127, diastolic: 83, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-07 21:05', systolic: 118, diastolic: 80, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-08 10:20', systolic: 122, diastolic: 80, heart_rate: 60, afib: 1, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-08 10:25', systolic: 123, diastolic: 78, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-08 17:00', systolic: 103, diastolic: 69, heart_rate: 60, afib: 1, state: 1, statin_dose: 2, euthyrox_dose: 3, comment: "слабость"},
      {measured_at: '2025-02-08 22:30', systolic: 127, diastolic: 83, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-08 22:35', systolic: 118, diastolic: 80, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-09 09:00', systolic: 139, diastolic: 88, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3, comment: "69.3"},
      {measured_at: '2025-02-09 09:05', systolic: 131, diastolic: 85, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-09 13:00', systolic: 120, diastolic: 76, heart_rate: 60, afib: 0, state: 2, statin_dose: 2, euthyrox_dose: 3, comment: "беспокойство"},
      {measured_at: '2025-02-09 18:45', systolic: 104, diastolic: 64, heart_rate: 104, afib: 1, state: 2, statin_dose: 2, euthyrox_dose: 3, comment: "давит спереди,беспокойство"},
      {measured_at: '2025-02-09 18:45', systolic:  95, diastolic: 72, heart_rate: 92, afib: 1, state: 2, statin_dose: 2, euthyrox_dose: 3, comment: "давит спереди,беспокойство"},
      {measured_at: '2025-02-09 19:15', systolic: 106, diastolic: 74, heart_rate: 81, afib: 1, state: 2, statin_dose: 2, euthyrox_dose: 3, comment: "давит спереди,беспокойство"},
      {measured_at: '2025-02-09 19:35', systolic: 102, diastolic: 80, heart_rate: 77, afib: 1, state: 2, statin_dose: 2, euthyrox_dose: 3, comment: "давит спереди,беспокойство"},
      {measured_at: '2025-02-10 08:30', systolic: 124, diastolic: 83, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-10 08:35', systolic: 127, diastolic: 81, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-10 13:00', systolic: 112, diastolic: 76, heart_rate: 60, afib: 0, state: 1, statin_dose: 2, euthyrox_dose: 3, comment: "после с/к, давит спереди слева"},  
      {measured_at: '2025-02-11 08:40', systolic: 124, diastolic: 81, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3, weight: 69.4},
      {measured_at: '2025-02-11 08:45', systolic: 125, diastolic: 81, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-11 22:50', systolic: 113, diastolic: 76, heart_rate: 62, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-12 08:50', systolic: 131, diastolic: 83, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3, weight: 69.5},
      {measured_at: '2025-02-12 08:55', systolic: 128, diastolic: 81, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-12 16:31', systolic: 116, diastolic: 75, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-12 16:36', systolic: 116, diastolic: 73, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-13 08:30', systolic: 133, diastolic: 82, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3, comment: "69.1 кг. ощущаю слева"},
      {measured_at: '2025-02-13 08:35', systolic: 130, diastolic: 81, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-13 19:50', systolic: 104, diastolic: 66, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3, comment: "давит слева"},
      {measured_at: '2025-02-13 19:55', systolic: 100, diastolic: 70, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-14 09:30', systolic: 132, diastolic: 82, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3, weight: 69.0},
      {measured_at: '2025-02-14 09:35', systolic: 126, diastolic: 81, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-14 18:15', systolic: 104, diastolic: 71, heart_rate: 60, afib: 0, state: 1, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-14 18:20', systolic: 109, diastolic: 69, heart_rate: 60, afib: 0, state: 1, statin_dose: 2, euthyrox_dose: 3},
      {measured_at: '2025-02-14 19:12', systolic:  99, diastolic: 59, heart_rate: 61, afib: 0, state: 2, statin_dose: 2, euthyrox_dose: 3, comment: "сильно слева сбоку"},
      {measured_at: '2025-02-14 23:40', systolic: 131, diastolic: 81, heart_rate: 61, afib: 0, state: 2, statin_dose: 2, euthyrox_dose: 3, comment: "постоянно сильно слева сбоку"},
      {measured_at: '2025-02-14 23:45', systolic: 122, diastolic: 78, heart_rate: 61, afib: 0, state: 2, statin_dose: 2, euthyrox_dose: 3, comment: "постоянно сильно слева сбоку"},
      {measured_at: '2025-02-15 10:35', systolic: 125, diastolic: 81, heart_rate: 60, afib: 0, state: 1, statin_dose: 2, euthyrox_dose: 3, weight: 69.0, comment: "чувствую... "},
      {measured_at: '2025-02-15 10:40', systolic: 127, diastolic: 81, heart_rate: 60, afib: 0, state: 0, statin_dose: 2, euthyrox_dose: 3},
    ])

    puts "===== #{Note.count} 'Note' record(s) created"
  else
    puts "===== 'Note' seeding skipped"
  end

rescue StandardError, AnotherError => e
  puts "----- Achtung! Something went wrong..."
  puts "#{e.inspect}"
end