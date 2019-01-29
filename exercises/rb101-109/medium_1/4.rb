def get_toggle_state(num_lights)
  arr_lights = Array.new(num_lights, false)

  1.upto(num_lights) do |round|
    round.step(by: round, to: num_lights) do |light|
      index = light-1
      arr_lights[index] = !arr_lights[index]
    end
  end

  arr_lights.each_index.select {|i| arr_lights[i] }.map {|e| e += 1 }
end

p get_toggle_state(1000)

# puts get_toggle_state(5) == [1, 4]
# puts get_toggle_state(10) == [1, 4,9]
