class Hamming
  VERSION = 1
  
def self.compute(s1, s2)
    raise ArgumentError if s1.length != s2.length

    s1.split('').zip(s2.split('')).select { |x1, x2| x1 != x2 }.length
  end
end

