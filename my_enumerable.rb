module MyEnumerable
  def all?(&block)
    each do |item|
      return false unless block.call(item)
    end
  end

  def any?(&block)
    each do |item|
      return true if block.call(item)
    end
  end

  def filter?(&block)
    result = []
    each do |item|
      result << item if block.call(item)
    end
    result
  end
end
