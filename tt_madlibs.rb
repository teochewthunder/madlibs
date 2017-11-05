def getMadLibContent()
	contentTypes = [ 
			{
				"story" => "While eating %s, I %s took up my %s and placed it under my %s. It %s %s.",
				"words" => [
					"food (e.g, pie, noodles, shortcake)",
					"adverb (e.g, happily, carefully, quickly)",
					"noun (e.g, hammer, balloon, cigar)",
					"item of clothing (e.g, hat, shoe, coat)",
					"past action (e.g, shouted, ran, floated)",
					"adverb (e.g, happily, carefully, quickly)"
				]
			}, 
			{
				"story" => "She bought a %s %s and started %s it as it %s. It felt %s to do so, and she continued %s.",
				"words" => [
					"descriptive (e.g, blue, glad, large)",
					"furniture (e.g, table, stool, cupboard)",
					"active action (e.g, running, eating, fighting)",
					"past action (e.g, shouted, ran, floated)",
					"descriptive (e.g, blue, glad, large)",
					"active action (e.g, running, eating, fighting)"
				]	
			}, 
			{
				"story" => "His %s was a %s %s and %s %s like a %s. He would try to %s, but this would result in %s %s.",
				"words" => [
					"relative (e.g, father, son, cousin)",
					"descriptive (e.g, blue, glad, large)",
					"noun (e.g, hammer, balloon, cigar)",
					"adverb (e.g, happily, carefully, quickly)",
					"past action (e.g, shouted, ran, floated)",
					"animal (e.g, goldfish, mouse, lion)",
					"action (e.g, think, stand, kick)",
					"people (e.g, men, gardeners, mechanics)",
					"active action (e.g, running, eating, fighting)"
				]	
			}, 
	]

	scenario = rand(contentTypes.length)
	madlibcontent = contentTypes[scenario]
end
	
puts "Welcome to TeochewThunder's Mad Libs!"

continue = ""
begin
	content = getMadLibContent()
	userProvided = Array.new(content['words'].length)
	for i in 0..content['words'].length-1
		puts "Please enter a word or phrase:" 
		puts content['words'][i]

		userProvided[i] = gets.chomp	
	end

	puts "Here is your story:"
	puts content['story'] % userProvided

	puts "Do you wish to continue? (Y/N)"
	continue = gets.chomp
end while continue == "Y" or continue == "y"
