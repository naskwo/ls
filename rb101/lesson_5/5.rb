# Example 3
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.any? do |key, value|
    value[0] == key.to_s
  end
end

[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.map do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end

[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end
