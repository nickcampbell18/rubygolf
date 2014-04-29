class Golf
  class << self
    def hole1 a
      a.inject :*
    end

  	def hole2
      [*('a'..'z')]
    end

    def hole3 n
      (1..n).reduce :*
    end

    def hole4 a
      r1 = /\Acat\(/
      a.map { |x|
        case x
        when /\Aman\(/
          "hat(#{x})"
        when r1
          x.gsub r1, 'dead('
        when /\Adog\(/
          "#{x[0..-2]}(bone))"
        end
      }
    end

    def hole5 a
      a.size.times.flat_map {|i|
        a.each_cons(i+1).map { |x| x }
      }
    end

    def hole6 n
      (1..n).map { |i| (f = [%[fizz][i % 3], %[buzz][i % 5]].compact.join).empty? ? i : f }
    end

    def hole8 n
      f = ->(x){ x < 2 ? x : f[x-1] + f[x-2] }
      (1..n).map &f
    end

    def hole9 n
      n.split(/\s/).map { |x|
        x.size <= 10 ? x : "#{x[0..3]}...#{x[-3..-1]}"
      }.join ' '
    end
  end
end
