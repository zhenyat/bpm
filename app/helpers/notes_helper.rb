module NotesHelper

  def afib_color value
    if value == 'yes' then
      color = "font-bold text-red-700"
    elsif value == 'no'
      color = "font-bold text-green-500"
    else
      color = ""
    end
  end

  def diastolic_color value
    if value < 60 then
      color="font-bold text-yellow-300"
    elsif value < 80 then
      color="font-bold text-green-500"
    elsif value < 85 then
      color="font-bold text-green-700"
    elsif value < 90 then
      color="font-bold text-yellow-400"
    elsif value < 100 then
      color="font-bold text-red-300"
    elsif value < 110 then
      color="font-bold text-red-500"
    else
      color="font-bold text-red-700"
    end
  end

  def heart_rate_color value
    if value < 50 then
      color = "font-bold text-red-700"
    elsif value < 55 then
      color = "font-bold text-red-500"
      elsif value < 60 then
      color = "font-bold text-yellow-400"
    elsif value < 70 then
      color = "font-bold text-green-500"
    elsif value < 80 then
      color = "font-bold text-yellow-400"
    elsif value < 90 then
      color = "font-bold text-red-300"
    else
      color = "font-bold text-red-700"
    end
  end

  def state_color value
    if value == 'bad' then
      color = "font-bold text-red-700"
    elsif value == 'satisfactory' then
      color = "font-bold text-yellow-400"
    elsif value == 'good'
      color = "font-bold text-green-500"
    else
      color = ""
    end
  end

  def systolic_color value
      if value < 100 then
      color = "font-bold text-yellow-300"
    elsif value < 120 then
      color = "font-bold text-green-500"
    elsif value < 130 then
      color = "font-bold text-green-700"
    elsif value < 140 then
      color = "font-bold text-yellow-400"
    elsif value < 160 then
      color = "font-bold text-red-300"
    elsif value < 160 then
      color = "font-bold text-red-500"
    else
      color = "font-bold text-red-700"
    end
  end
end
