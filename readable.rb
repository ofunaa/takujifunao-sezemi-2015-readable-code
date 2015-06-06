## spec1
puts "オムライス"

## spec3
print File.open("spec3-data.txt").read

## spec4

File::open("spec4-data.txt") {|f|
  f.each {|recipe| print recipe}
}