class LRUCache

  def initialize(size)
    @size=size
    @cache=[]
  end

  def count
    @cache.count
  end

  def add(item)
    if @cache.include?(item)
      @cache.delete(item)
      @cache.push(item)
    elsif @size <= count
      @cache.shift
      @cache.push(item)
    else
      @cache.push(item)
    end

  end

  def show
    p @cache
    nil

  end
end
