class ListNode
  attr_accessor :value, :next

  def initialize(value, next_node = nil)
    @value = value
    @next = next_node
  end
end

class LinkedList
  def initialize
    # Dummy node
    # The head pointer will always point to the dummy node
    @head = ListNode.new(-1)
    @tail = @head
  end

  def get(index)
    curr = @head.next
    i = 0

    while curr
      return curr.value if i == index

      curr = curr.next
      i += 1
    end

    -1
  end

  def insert_head(val)
    node = ListNode.new(val, @head.next) # Set the current head node as the next of the new node
    @head.next = node # Points the dummy node next to the new node
    @tail = node if !node.next # If we are inserting the first node, it'll also be the tail
  end

  def insert_tail(val)
    node = ListNode.new(val)
    @tail.next = node
    @tail = node
  end

  def insert(index, val)
    prev = @head
    i = 0

    while prev && i < index
      prev = prev.next
      i += 1
    end

    if prev
      node = ListNode.new(val, prev.next)
      @tail = node if @tail == prev
      prev.next = node
      return true
    end

    false
  end

  def remove(index)
    # We need to have reference to the previous node to remove the desired one
    # It starts with the dummy node
    prev = @head
    i = 0

    while prev && i < index
      prev = prev.next
      i += 1
    end

    # If the desired node exists, remove it
    if prev&.next
      @tail = prev if @tail == prev.next # If the desired node is also the tail, update the tail reference to the previous node
      prev.next = prev.next.next
      return true
    end

    false
  end

  def get_values
    values = []
    curr = @head.next

    while curr
      values << curr.value
      curr = curr.next
    end

    values
  end
end
