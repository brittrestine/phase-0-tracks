chicago = {
  downtown: {
    business_district: "9-5_hours",
    little_italy: {
        italian_food: "pasta",
        language: "italian"
    },
    things_to_see: [
      "the_bean",
      "art_museum",
      "buckingham_fountain"
    ]
  },
  lakeview: {
    bars: {
      alive_one: "$2_pints_tuesday",
      l_l_tavern: "$5_beer_shot"
      },
    food: {
      joys: "thai",
      gyro_mena: "greek"
    },
    things_to_see: [
      "lincoln_park",
      "free_zoo",
      "conservatory"
    ]
  }
}

p chicago[:lakeview][:things_to_see]
p chicago[:downtown][:little_italy][:language].upcase
p chicago[:downtown][:things_to_see][1]

chicago[:lakeview][:food].each do |food, type|
    p type.capitalize
end
