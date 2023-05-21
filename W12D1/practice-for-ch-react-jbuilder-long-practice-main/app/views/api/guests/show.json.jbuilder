# json.name(@guest.name)
# json.age(@guest.age)
# json.favorite_color(@guest.favorite_color)

json.partial!("api/guests/guest", guest: @guest)
json.gifts{
    json.array!(@guest.gifts){ |gift|
        json.extract!(gift, :title, :description)
        json.party(gift.party.name)
    }
}
