# noinspection RubyUnusedLocalVariable
class Checkout

  def checkout(skus)
    return -1 if not_proper(skus)

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


end




