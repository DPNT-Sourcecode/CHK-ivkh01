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
      bool = true if !(["A","B","C","D", "E"].include?(letter))
    end
    bool
  end

  def hash_making_of_string(skus)
    hash = {"A"=> 0,"B"=> 0, "C"=> 0, "D"=> 0, "E"=>0 }
    skus.chars.each do |letter|
      hash[letter]+=1
    end
    hash
  end

  def price_counting_of_hash(hash)
    price = 0
    hash.each do |item , time |
      price += ((time/5)*200 + ((time%5)/3)*130 + (time - (time/5)*5 -(((time - (time/5)*5)/3)*3))*50)if item == "A"
      price += (((time-number_of_E(hash)/2)/2)*45 + ((time-number_of_E(hash)/2)%2)*30) if item == "B"
      price += time*20 if item == "C"
      price += time*15 if item == "D"
      price += (time*40) if item == "E"
    end
    price
  end

  def number_of_E(hash)
    hash["E"]
  end

end
