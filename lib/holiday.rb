require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  return holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_supplies[:winter][:christmas] << "Balloons"
  holiday_supplies[:winter][:new_years] << "Balloons"
  return holiday_supplies
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies[:spring][:memorial_day] << "Grill"
  holiday_supplies[:spring][:memorial_day] << "Table Cloth"
  return holiday_supplies
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[:fall][:columbus_day] = ["Flags", "Italian Food", "Parade Floats"]
  holiday_supplies[:winter][:valentines_day] = ["Candy Hearts", "Cupid Cut-Out"]
  return holiday_supplies
end

def all_winter_holiday_supplies(holiday_hash)
  return holiday_supplies[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, value|
    puts "#{season.capitalize}:"
    value.collect do |holiday, items|
      puts "  #{holiday.to_s.gsub("_", " ").split.map(&:capitalize).join(' ')}: #{items.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  with_bbq = []
  holiday_hash. each do |season, value|
    value. each do |holiday, items|
      if items.include?("BBQ")
        with_bbq.push(holiday)
      end
    end
  end
  return with_bbq
end
