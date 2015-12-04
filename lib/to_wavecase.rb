class String

  def to_wavecase
    str = self
    start_odd = false
    result = []
    str.split(' ').each { |word|
      this_word = []
      word.split('').each_with_index{ |chr, i|
        unless start_odd
          if i.even?
            chr.downcase!
          else 
            chr.upcase!
          end
        else
          if i.even?
            chr.upcase!
          else 
            chr.downcase!
          end
        end
        this_word << chr
      } 
      if this_word.last.upcase == this_word.last
        start_odd = false
      else
        start_odd = true
      end
      result << this_word.join('')
    }
    result.join(' ')
  end
end


