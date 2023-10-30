class ListNode
  attr_accessor :value, :prev, :next

  def initialize(value, previous_node = nil, next_node = nil)
    @value = value
    @prev = previous_node
    @next = next_node
  end
end

class MyLinkedList
  def initialize
    @left = ListNode.new(-1)
    @right = ListNode.new(-1)
    @left.next = @right
    @right.prev = @left
  end

  def get(index)
    curr = @left.next
    i = 0

    while curr != @right
      return curr.value if i == index

      curr = curr.next
      i += 1
    end

    -1
  end

  def add_at_head(val)
    node = ListNode.new(val)
    node.prev = @left
    node.next = @left.next

    @left.next.prev = node
    @left.next = node
  end

  def add_at_tail(val)
    node = ListNode.new(val)
    node.prev = @right.prev
    node.next = @right

    @right.prev.next = node
    @right.prev = node
  end

  def add_at_index(index, val)
    curr = @left.next
    i = 0

    while curr && i < index
      curr = curr.next
      i += 1
    end

    if curr
      node = ListNode.new(val)
      node.prev = curr.prev
      node.next = curr

      curr.prev.next = node
      curr.prev = node
    end
  end

  def delete_at_index(index)
    curr = @left.next
    i = 0

    while curr && i < index
      curr = curr.next
      i += 1
    end

    if curr && curr != @right
      curr.prev.next = curr.next
      curr.next.prev = curr.prev
    end
  end
end
