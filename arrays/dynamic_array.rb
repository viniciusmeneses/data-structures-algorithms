class DynamicArray
  def initialize(capacity)
    @list = Array.new(capacity)
    @capacity = capacity
    @size = 0
  end

  def get(i)
    @list[i]
  end

  def set(i, n)
    @list[i] = n
  end

  def pushback(n)
    resize if @capacity == @size
    @list[@size] = n
    @size += 1
  end

  def popback
    @size -= 1
    @list[@size]
  end

  def resize
    @capacity *= 2
    new_list = Array.new(@capacity)

    i = 0
    while i < @size
    new_list[i] = @list[i]
    i += 1
    end
    @list = new_list
  end

  def getSize
    @size
  end

  def getCapacity
    @capacity
  end
end
