class Golf
  class << self
    def hole1(a)
      a.inject :*
    end

  	def hole2
      ('a'..'z').to_a
    end

    def hole3(n)
      (1..n).reduce(:*)
    end

    def hole4(a)
      r1 = /\Acat\(/
      a.map do |x|
        case x
        when /\Aman\(/
          "hat(#{x})"
        when r1
          x.gsub r1, 'dead('
        when /\Adog\(/
          "#{x[0..-2]}(bone))"
        end
      end
    end

    def hole5(a)
      a.size.times.flat_map {|i|
        a.each_cons(i+1).map { |x| x }
      }
    end

    def hole6(n)
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

  def self.hole8(n)
    f = ->(x){ x < 2 ? x : f[x-1] + f[x-2] }
    (1..n).map(&f)
  end
end
