class Golf
  def self.hole1(a)
    a.inject :*
  end
  def self.hole5(a)
    a.size.times.flat_map {|i|
      a.each_cons(i+1).map { |x| x }
    }
  end
end
