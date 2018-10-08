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

# def get_first_name_of_season_winner(data,season)
#  data[season.to_sym].each do |into_array|
#    if into_array[:status] =="Winner"
#      return into_array[:name].split(" ")[0]
#    end
#  end
# end

def get_first_name_of_season_winner(data, season)
  data[season].each do |people|
    people.each do |k,v|
      if v == "Winner"
      full_name = people["name"]
          return full_name.split(' ').first
        end
      end
    end
  end


# def get_contestant_name(data, occupation)
#   # code here
# end
def get_contestant_name(data, occupation)
data.each do |season, season_array|
  season_array.each do |into_array|
    if into_array[:occupation] == occupation
      return into_array[:name]
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
