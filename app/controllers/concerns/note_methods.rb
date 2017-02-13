#! /usr/bin/env ruby
################################################################################
#   notes.rb
#
#   Methods to identif Note data
#
#   12.02.2017  ZT
################################################################################

module NoteMethods
  extend ActiveSupport::Concern

  # Collects Note data for selected Arithmia status and dates range
  def notes_collection artm, year, month
    if year == 'a'
      start_date = Time.new(2010, 01, 01)
      end_date   = Time.now.end_of_day
    else
      if month == 'a'
        start_date = Time.new(year)
        end_date   = start_date.end_of_year
      else
        start_date = Time.new(year, month)
        end_date   = start_date.end_of_month
      end
    end

    if artm == 'a'
      collection = Note.where("measured_at >= ? AND measured_at <= ?", start_date, end_date)
    else
      collection = Note.where("artm = ? AND measured_at >= ? AND measured_at <= ?", artm, start_date, end_date)
    end

    collection.order(:measured_at)
  end
end
