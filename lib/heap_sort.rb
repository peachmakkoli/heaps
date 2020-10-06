require_relative "min_heap"

# This method uses a heap to sort an array.
# Time Complexity: O(n log n), where n is the number of nodes and because this method adds the elements to a heap, then places them back in the array in order
# Space Complexity: O(log n), due to recursive calls of the heap_up and heap_down methods within the add and remove methods
def heapsort(list)
  return list if list.empty? || list.length < 2
    
  min_heap = MinHeap.new
  list.each do |value|
    min_heap.add(value)
  end

  i = 0

  while i < list.length
    list[i] = min_heap.remove
    i += 1
  end

  return list
end