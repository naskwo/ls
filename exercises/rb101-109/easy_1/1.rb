def repeat(string,multiplier)
  multiplier.to_i.times do
    puts string    
  end
end

repeat('Hello', 3)