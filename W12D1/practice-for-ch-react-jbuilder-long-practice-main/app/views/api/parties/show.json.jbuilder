json.name(@party.name)
json.location(@party.location)
json.guests {
    json.array!(@party.guests) { |guest|
        json.name(guest.name)
        json.gifts(
            guest.gifts.map{ |gift|
                gift.title
            }
        )
    }
}
