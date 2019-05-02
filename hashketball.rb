# Write your code here!

require 'pry'

def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        
        "Alan Anderson"=> {
          :number => 0,
          :shoe => 16, 
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        
          "Reggie Evans"=> {
          :number => 30,
          :shoe => 14, 
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
             
          "Brook Lopez"=> {
          :number => 11,
          :shoe => 17, 
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        
          "Mason Plumlee"=> {
          :number => 1,
          :shoe => 19, 
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
         
         "Jason Terry"=> {
          :number => 31,
          :shoe => 15, 
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
        
        
      }  
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        
          "Jeff Adrien"=> {
          :number => 4,
          :shoe => 18, 
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        
          "Bismak Biyombo"=> {
          :number => 0,
          :shoe => 16, 
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
             
          "DeSagna Diop"=> {
          :number => 2,
          :shoe => 14, 
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        
          "Ben Gordon"=> {
          :number => 8,
          :shoe => 15, 
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
         
         "Brendan Haywood"=> {
          :number => 33,
          :shoe => 15, 
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  } 
end  

def num_points_scored(name)
  game_hash.each do |k, v| 
      #k is either away or home
    v.each do |x, y|      
      if x == :players #we are in players now
        y.keys.each do |a|
          #y is the values of players so the players.
          if a == name
          #team = k
         #binding.pry
          return y[name][:points]
          end
        end
      end
    end
  end
end  

def shoe_size(name) 
game_hash.each do |k, v| 
      #k is either away or home
    v.each do |x, y|      
      if x == :players #we are in players now
        y.keys.each do |a|
          #y is the values of players so the players.
          if a == name
          #team = k
         #binding.pry
          return y[name][:shoe]
          end
        end
      end
    end
  end
  #puts shoe
end



def shoe_size(name) 
  game_hash.each do |key, teams|
    teams.each do |team_keys, team_data|
      if team_keys == :players
        team_data.keys.each do |player_names|
          if player_names == name
            return team_data[name][:shoe]
          end
        end
      end
    end
  end 
end   



def team_colors(team)
 team_key = nil
  game_hash.each do |key, teams|
    teams.each do |team_keys, team_data|
      if team_data == team
        team_key = key
      end
    end
  end 
  return game_hash[team_key][:colors]
 end
 
def team_names
  names = []
  game_hash.each do |key, teams|
    teams.each do |team_keys, team_data|
      if team_data.is_a? String 
        names <<  team_data
        end
      end
    end
    return names
  end 
  
def player_numbers(team)
 team_key = nil
 team_numbers = []
  game_hash.each do |key, teams|

    teams.each do |team_keys, team_data|
    #puts team_keys
      if team_data == team
      #puts teams
        team_key = key
       
        
        teams.each do |x, y|
         if y.is_a?(Hash)
          puts "y test"
         y.each do |a, b|
         puts "now b test"
         b.each do |k, v|
         if k == :number        
         team_numbers << v
        end
        end
      end
      end
      end
    end
    team_numbers.sort.to_s
  end 
  #puts team_numbers
 end
end
