class Stack
  def initialize
    @stack =[]

  end

  def pop
  @stack.pop
  end
  def push(el)
    @stack << el
  end
  def peek
    @stack[-1]

  end
end
class Queue
  def initialize
    @que=[]

  end
  def enqueue(el)
    @que.unshift(el)

  end
  def dequeue
    @que.pop

  end
  def peek
    @que.last

  end

end
class Map
  def initialize
    @map=[]

  end
  def set(k,v)
    incl=false
    @map.each do |ma|
      incl=true if ma[0]==k
    end
    @map <<[k,v] unless incl
    if incl
      puts "already exit in the map"
    else
      @map
    end

  end
  def get(k)
    @map.each do |x|
      return k if x[0]==k
    end
    puts "no key"
    nil

  end
  def delete(key)
    ind=nil

    @map.each_with_index do |x,i|
      ind=i if x[0]==key


    end


    if ind
      @map.delete_at(ind)
      @map
    else
      puts "no such key"
    end



  end

end
