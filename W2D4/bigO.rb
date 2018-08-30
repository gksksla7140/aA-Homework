def sluggish_oc(arr)
  largest=""
  arr.each do |x|
    arr.each do |y|
      largest= x if x.length > y.length
    end
  end
  largest


end



def merge_sort(arr)


  return arr if arr.count <= 1

  midpoint = count / 2
  sorted_left = merge_sort(arr.take(midpoint))
  sorted_right = merge_sort(arr.drop(midpoint))

merge(sorted_left, sorted_right, &prc)
end


def merge(left, right)
  merged = []

  until left.empty? || right.empty?
    case left[0] <=>right[0]
    when -1
      merged << left.shift
    when 0
      merged << left.shift
    when 1
      merged << right.shift
    end
  end

  merged.concat(left)
  merged.concat(right)

  merged
end
def nlogn_fish(array)

  #return the first element
  merge_sort(fish).last
end


def linearsort(arr)
  final=""
  arr.each do |x|
    final = x if x.length > final.length
  end
  final

end

dance will use iterative version


fast will impelemnt hash method.
