{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |pair, hash|
  hash[pair.last] = pair.first
end

{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |(key, value), arr|
  arr << key
end

[1, 2, 3].each_with_object([9,8,7]) do |num, array|
  array << num if num.odd?
end