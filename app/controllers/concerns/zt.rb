module Zt
  extend ActiveSupport::Concern

  def daytime_notes()
    selected_notes = []
    Note.all.each do |note|
      hour = note.measured_at.hour
      if (hour >=12 and hour < 18) 
        selected_notes << note
      end
    end
    selected_notes
  end

  def evening_notes()
    selected_notes = []
    Note.all.each do |note|
      hour = note.measured_at.hour
      if (hour >=18 and hour < 24) 
        selected_notes << note
      end
    end
    selected_notes
  end

  def morning_notes()
    selected_notes = []
    Note.all.each do |note|
      hour = note.measured_at.hour
      if (hour >=6 and hour < 12) 
        selected_notes << note
      end
    end
    selected_notes
  end

  def night_notes()
    selected_notes = []
    Note.all.each do |note|
      hour = note.measured_at.hour
      if (hour >=0 and hour < 6) 
        selected_notes << note
      end
    end
    selected_notes
  end

  def notes_created_today
    Note.where("created_at >= ?", Time.now.utc.strftime('%Y-%m-%d')).order(:measured_at)
  end
end