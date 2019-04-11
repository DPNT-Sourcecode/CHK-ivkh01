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
      bool = true if !(["A","B","C","D"].include?(letter))
    end
    bool
  end

  def hash_making_of_string(skus)
    hash = {"A"=> 0,"B"=> 0, "C"=> 0, "D"=> 0 }
    skus.chars.each do |letter|
      hash[letter]+=1
    end
    hash
  end

  def price_counting_of_hash(hash)
    price = 0
    hash.each do |item , time |
      price += time*50 if item == "A"
      price += time*30 if item == "B"
      price += time*20 if item == "C"
      price += time*15 if item == "D"
    end
    price
  end



end





