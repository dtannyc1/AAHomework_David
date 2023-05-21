json.guests{
    @guests.each do |guest|
        json.set!(guest.id){
            json.extract!(guest, :id, :name, :age, :favorite_color)
            json.gift_ids(
                guest.gifts.map do |gift|
                    gift.id
                end
            )
        }
    end
}
