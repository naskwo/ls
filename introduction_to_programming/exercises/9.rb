h = {a:1, b:2, c:3, d:4}

p h[:b] #1

p h[:e] = 5 #2

# p h.select { |k,v| v >= 3.5 }
p h.delete_if {|k,v| v < 3.5 }

p h # modifies the caller
