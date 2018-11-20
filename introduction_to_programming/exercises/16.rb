arr = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']

arr_new = arr.map { |e| e.split(" ")  }

p arr_new.flatten.sort
