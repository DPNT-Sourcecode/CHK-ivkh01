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
      bool = true if !(["A","B","C","D", "E", "F","G","H", "I", "J", "K", "L", "M", "N","O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"].include?(letter))
    end
    bool
  end

  def hash_making_of_string(skus)
    hash = Hash.new(0)
    skus.chars.each do |letter|
      hash[letter]+=1
    end
    hash
  end

  def price_counting_of_hash(hash)
    price = item_A_price(hash) + normal_price(hash, "C",20) +
    normal_price(hash, "D",15) + normal_price(hash, "E",40) +
    item_F_price(hash)+ item_B_price(hash) + normal_price(hash, "G", 20)+item_H_price(hash)+
    normal_price(hash, "I",35) +normal_price(hash, "J", 60)+ item_K_price(hash)+
    normal_price(hash, "L", 90)+ item_M_price(hash)+ normal_price(hash, "N", 40)+
    normal_price(hash, "O", 10)+ item_P_price(hash) + item_Q_price(hash) + normal_price(hash, "R", 50)+
    normal_price(hash, "S", 30)+ normal_price(hash, "T", 20)+ item_U_price(hash)+
    item_V_price(hash)

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

  def number_of_N(hash)
    hash["N"]
  end

  def number_of_R(hash)
    hash["R"]
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

  def item_H_price(hash)
    rep = hash["H"]
    return (rep/10)*80 +(rep - (rep/10)*10)/5*45 + ((rep - (rep/10)*10)- ((rep - (rep/10)*10))/5*5)*10
  end

  def item_K_price(hash)
    rep = hash["K"]
    return rep/2*150 +(rep -rep/2*2)*80
  end

  def item_M_price(hash)
    rep = hash["M"]
    return (rep - number_of_N(hash)/3)*15 if rep > number_of_N(hash)/3
    return 0
  end

  def item_P_price(hash)
    rep = hash["P"]
    return (rep/5)*200 + (rep - rep/5*5)*50
  end

  def item_Q_price(hash)
    rep = hash["Q"] - number_of_R(hash)
    return (rep/3)*80 + (rep - rep/3*3)*30 if rep> 0
    return 0
  end

  def item_U_price(hash)
    rep = hash["U"]
    return (rep/4)*120 + (rep - rep/4*4)*40
  end

  def item_V_price(hash)
    rep = hash["V"]
    # final = rep - rep/3*3- ((rep -rep/3*3)/2*2)
    # return (rep/3)*130 + (rep - rep/3*3)/2*90 + final*50
    return (rep/3)*130 +(rep - (rep/3)*3)/2*90 + ((rep - (rep/3)*3)- ((rep - (rep/3)*3))/2*2)*50
  end
end





