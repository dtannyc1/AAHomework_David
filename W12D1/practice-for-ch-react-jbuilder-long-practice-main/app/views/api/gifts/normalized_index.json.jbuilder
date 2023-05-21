json.gifts{
    @gifts.each do |gift|
        json.set!(gift.id){
            json.extract!(gift, :id, :title, :description)
            json.partyId(gift.party.id)
            json.guestId(gift.guest.id)
        }
    end
}
