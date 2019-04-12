# noinspection RubyUnusedLocalVariable
class Checkout

  def checkout(skus)
    return -1 if not_proper(skus)
    return price_counting_of_hash(hash_making_of_string(skus))

  end
  private

  def not_proper(skus)
    letters = skus.chars
    bool = false
    letters.each do |letter|
      bool = true if !(["A","B","C","D", "E", "F"].include?(letter))
    end
    bool
  end

  def hash_making_of_string(skus)
    hash = {"A"=> 0,"B"=> 0, "C"=> 0, "D"=> 0, "E"=>0 , "F" => 0  }
    skus.chars.each do |letter|
      hash[letter]+=1
    end
    hash
  end

  def price_counting_of_hash(hash)
    price = item_A_price(hash) + normal_price(hash, "C",20) +
    normal_price(hash, "D",15) + normal_price(hash, "E",40) +
    item_F_price(hash)+ item_B_price(hash)
    # hash.each do |item , time |
    #   # price += ((time/5)*200 + ((time%5)/3)*130 + (time - (time/5)*5 -(((time - (time/5)*5)/3)*3))*50) if item == "A"
    #   # price += (((time-number_of_E(hash)/2)/2)*45 + ((time-number_of_E(hash)/2)%2)*30) if (item == "B" && time > 0)
    #   # # price += time*20 if item == "C"
    #   # price += time*15 if item == "D"
    #   # price += (time*40) if item == "E"
    #   # price += time/3*20 +(time-time/3*3)*10 if (item == "F" && time >=3 )
    #   # price += (time*10) if (item == "F" && time < 3 )
    # end
    price
  end

  def number_of_E(hash)
    hash["E"]
  end

  def item_A_price(hash)
    rep = hash["A"]
    ((rep/5)*200 + ((rep%5)/3)*130 + (rep - (rep/5)*5 -(((rep - (rep/5)*5)/3)*3))*50)
  end

  def normal_price(hash, item, each_price)
    hash[item]*each_price
  end

  def item_F_price(hash)
    rep = hash["F"]
    return rep/3*20 +(rep-rep/3*3)*10 if rep >= 3
    return  rep*10 if  rep < 3
  end

  def item_B_price(hash)
    rep = hash["B"]
    return (((rep-number_of_E(hash)/2)/2)*45 + ((rep-number_of_E(hash)/2)%2)*30) if rep>= number_of_E(hash)/2
    return 0
  end
end
