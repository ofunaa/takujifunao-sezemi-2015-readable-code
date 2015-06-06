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

## spec6

recipe_id = 1
File::open("spec4-data.txt") {|f|
  while line = f.gets

  	## 食べたいレシピを{1,2,3}から選択
  	select_id = 0
  	
  	if select_id == 1
  		puts "id:1 " + "オムライス"
  		break
  	elsif select_id == 2
  		puts "id:2 " + "親子丼"
  		break
  	elsif select_id == 3
  		puts "id:3 " + "杏仁豆腐"
  		break
  	else
  		puts "id:" + "#{recipe_id} " + line
  	end
    recipe_id += 1
  end
}