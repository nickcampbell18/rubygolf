class Golf

  def self.hole3(n)
    (1..n).reduce(:*)
  end

  def self.hole6(n)
    (1..n).map{|x|
      case
      when x%15 == 0
        'fizzbuzz'
      when x%3 == 0
        'fizz'
      when x%5 == 0
        'buzz'
      else
        x
      end
    }
  end

end
