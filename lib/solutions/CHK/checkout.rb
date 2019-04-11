# noinspection RubyUnusedLocalVariable
class Checkout

  def checkout(skus)
    if bool return -1


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

end


