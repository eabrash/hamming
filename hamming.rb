# Calculates Hamming number for two pre-aligned oligos

class Hamming

  def self.compute(oligo1, oligo2)

    if oligo1.length != oligo2.length
      raise ArgumentError
    end

    hamming = 0

    length = oligo1.length

    (0...oligo1.length).each do |base|
      if oligo1[base] != oligo2[base]
        hamming +=1
      end

    end

    return hamming

  end

end
