class MaxIntSet
  attr_accessor :store
  def initialize(max)
    @store = Array.new(max,false)
  end

  def insert(num)
    raise "Out of bounds" if num < 0 || num > store.length

    store[num] = true
  end

  def remove(num)
    store[num] = false
  end

  def include?(num)
    return true if store[num] == true
    return false
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end

class IntSet
  attr_accessor :store
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    curr_bucket = self[num]
    curr_bucket.push(num)
  end

  def remove(num)
    curr_bucket = self[num]
    curr_bucket.delete(num)
  end

  def include?(num)
    return true if self[num].include?(num)
    return false
  end

  private

  def [](num)
    store[num % num_buckets]
  end

  def num_buckets
    store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
    
  end

  private

  def num_buckets
    @store.length
  end

  def resize!
  end

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end
end