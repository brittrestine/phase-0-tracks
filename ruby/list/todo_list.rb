class TodoList
  attr_accessor :get_items

  def initialize(arr)
    @get_items = arr
  end

  def add_item(x)
    @get_items << x
  end

  def delete_item(x)
    @get_items.delete(x)
  end

  def get_item(x)
    @get_items[x]
  end
end



