class Dictionary
  def initialize
    @d = {}
  end

  def add(entry)
    if entry.is_a? String
      @d[entry] = nil
    else
      entry.each do |word, defin|
        @d[word] = defin
      end
    end
  end

  def entries
    @d
  end

  def keywords
    @d.keys.sort
  end

  def find(query)
    @d.select {|word, defin| word.scan(query).join == query}
  end

  def include?(key)
    @d.has_key?(key)
  end
end
