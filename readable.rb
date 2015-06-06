## spec1
puts "オムライス"

## spec3
puts File.open("spec3-data.txt").read

## spec4

File::open("spec4-data.txt") {|f|
  f.each {|recipe| puts recipe}
}

## spec5

recipe_id = 1
File::open("spec4-data.txt") {|f|
  while line = f.gets
    puts "id:" + "#{recipe_id} " + line
    recipe_id += 1
  end
}