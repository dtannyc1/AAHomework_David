json.array!(@gifts){ |gift|
    json.extract!(gift, :title, :description)
    json.party(gift.party.name)
}
