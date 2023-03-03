module MyEnumerable
  def all?(&block)
    each do |item|
      return false unless block.call(item)
    end
    true
  end

  def any?(&block)
    each do |item|
      return true if block.call(item)
    end
    false
  end

  def filter?(&block)
    result = []
    each do |item|
      result << item if block.call(item) == true
    end
  end
end
