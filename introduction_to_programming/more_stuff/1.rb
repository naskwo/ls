words = %w{laboratory experiment Pans\ Labyrinth elaborate polar\ bear}

p words.select { |w| w =~ /lab/}
