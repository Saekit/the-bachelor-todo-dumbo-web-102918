require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|
    contestants.each do |key, attribute|
      if attribute == "Winner"
        full_name = contestants["name"]
        return full_name.split(' ').first
      end
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |attribute|
      attribute.each do |key, value|
        if value == occupation
          return attribute["name"]
        end
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |attribute|
      attribute.each do |key, value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |attribute|
      attribute.each do |key, value|
        if value == hometown
          return attribute["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  array = []
  data[season].each do |contestants|
    contestants.each do |key, attribute|
      array << contestants["age"]
      return array.inject {|sum, el| sum + el}.to_f / array.size
    end
  end
end
