class String
  def to_wavecase
    self.gsub(/\w/).with_index{|chr, i| i.even? ? chr.downcase : chr.upcase}
  end
end
