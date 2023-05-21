json.array!(@parties){ |party|
    json.name(party.name)
    json.location(party.location)
    subset = party.guests.select{ |guest|
                guest.age >= 40 && guest.age <= 50
            }
    json.guests(
        subset.map{|guest|
            guest.name
        }
        # party.guests.map{ |guest|
        #     guest.name
        # }
    )
}
