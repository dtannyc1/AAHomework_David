json.parties{
    json.set!(@party.id){
        json.extract!(@party, :id, :name, :location)
        json.guest_ids(
            @party.guests.map{|guest| guest.id}
        )
        json.gift_ids(
            @party.gifts.map{|gift| gift.id}
        )
    }
}

json.guests{
    @party.guests.each do |guest|
        json.set!(guest.id){
            json.extract!(guest, :id, :name, :age, :favorite_color)
            json.gift_ids(
                guest.gifts.map{|gift| gift.id}
            )
        }
    end
}

json.gifts{
    @party.gifts.each do |gift|
        json.set!(gift.id){
            json.extract!(gift, :id, :title, :description)
            json.partyId(@party.id)
            json.guestId(gift.guest.id)
        }
    end
}
