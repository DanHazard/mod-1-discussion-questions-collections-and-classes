

# GROUP MEMBERS: DAN LOVE, JOHN LOBERGER, ALEX GRIMES, CLAUDIU SARB, MICHAEL SOTIR
## QUESTION 1
require 'pry'

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]

def bulb_ability(pokemon)
  y = pokemon.select do |x|
  x[:name] == "bulbasaur"
  end
  z = y.map do |x|
  x[:abilities][0][:ability][:url]
  end
end

p bulb_ability(pokemon)

p "--------------"

def first_over_forty(pokemon)
  pokemon.first do |hash|
     hash[:base_experience] > 40
  end
end

p first_over_forty(pokemon)
# p pokemon.first do |hash|
#    hash[:base_experience] > 40
# end
p "--------------"

def all_over_forty(pokemon)
  pokemon.select do |hash|
    hash[:base_experience] > 40
  end
end

p all_over_forty(pokemon)
# p pokemon.select do |hash|
#   hash[:base_experience] > 40
# end
p "--------------"

def pokemon_names(pokemon)
  names = pokemon.map do |hash|
    hash[:name]
  end
  names
end

p pokemon_names(pokemon)

# arr = pokemon.map do |hash|
#   hash[:name]
# end
p "--------------"

def pokemon_over_sixty?(pokemon)
  pokemon.any? do |hash|
    hash[:weight] > 60
  end
end

p pokemon_over_sixty?(pokemon)
# p pokemon.any? do |hash|
#   hash[:weight] > 60
# end
p "--------------"







# How would you get the url for Bulbasaur's ability?
# How would you return the first pokemon with base experience over 40?
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
# How would you return an array of all of the pokemon's names?
# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.
