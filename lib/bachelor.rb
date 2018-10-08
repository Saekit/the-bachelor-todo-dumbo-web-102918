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
    contestants.each do |key, attribute|
      if attribute == occupation
        return contestants["name"]
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
