require 'pry'

c


def add_supply_to_winter_holidays(holiday_hash, supply)
 holiday_hash[:winter].each do |holiday|
    holiday[holiday.length-1] << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
 holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  supplies = []
 holiday_hash[:winter].each do |holiday, supply|
 supply.each do |item|
   supplies << item
  end
  end
  return supplies
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |event, supplies|
      upcase_holidays = []
    if event.to_s.split("_").size > 1
      event.to_s.split("_").each do |event_name|
        upcase_holidays << event_name.capitalize
      end
    else
      upcase_holidays << event.capitalize
    end
    puts "  #{upcase_holidays.join(" ")}: #{supplies.join(", ")}"
  end
end
end

def all_holidays_with_bbq(holiday_hash)
  supplies_with_bbq = []
  holiday_hash.match 
end







