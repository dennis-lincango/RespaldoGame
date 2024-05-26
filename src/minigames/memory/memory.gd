extends Node2D
# extends Minigame

var card_face
var card_back
var init
var number_of_matches
var default_image
var image1
var image2
var image3
var image4
var image5
var image6
var image7
var image8
var image9
var image10
var image11
var image12
var name_image1
var name_image2
var name_image3
var name_image4
var name_image5
var name_image6
var name_image7
var name_image8
var name_image9
var name_image10
var name_image11
var name_image12
var last_try_was_pair
var card_one_checked_if_pairing
var card_two_checked_if_pairing
var card_one_string
var card_two_string
var all_remaining_cards = []
var random_card
var card_number

func _ready():
	number_of_matches = 0
	card_one_string = "Card 1"
	card_two_string = "Card 2"
	last_try_was_pair = false
	default_image = preload ("res://assets/minigames/memory/box.png")
	image1 = preload ("res://assets/minigames/memory/cat.png")
	name_image1 = "Cat"
	image2 = preload ("res://assets/minigames/memory/chicken.png")
	name_image2 = "Chicken"
	image3 = preload ("res://assets/minigames/memory/fox.png")
	name_image3 = "Fox"
	image4 = preload ("res://assets/minigames/memory/mouse.png")
	name_image4 = "Mouse"
	image5 = preload ("res://assets/minigames/memory/pig.png")
	name_image5 = "Pig"
	image6 = preload ("res://assets/minigames/memory/rabbit.png")
	name_image6 = "Rabbit"
	randomize()
	init = false

func _process(delta):
	if !init:
		_shuffle_cards()


func _shuffle_cards():
	all_remaining_cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
	
	#prints (all_remaining_cards.size())
	random_card = randi() % all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_1_card_1 = "Card" + str(card_number)
	
	random_card = randi() % all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_1_card_2 = "Card" + str(card_number)
	
	random_card = randi() % all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_2_card_1 = "Card" + str(card_number)
	
	random_card = randi() % all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_2_card_2 = "Card" + str(card_number)
	
	random_card = randi() % all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_3_card_1 = "Card" + str(card_number)
	
	random_card = randi() % all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_3_card_2 = "Card" + str(card_number)
	
	random_card = randi() % all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_4_card_1 = "Card" + str(card_number)
	
	random_card = randi() % all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_4_card_2 = "Card" + str(card_number)
	
	random_card = randi() % all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_5_card_1 = "Card" + str(card_number)
	
	random_card = randi() % all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_5_card_2 = "Card" + str(card_number)
	
	random_card = randi() % all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_6_card_1 = "Card" + str(card_number)
	
	random_card = randi() % all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_6_card_2 = "Card" + str(card_number)
	
	get_node(pair_1_card_1).card_face = image1
	get_node(pair_1_card_1).card_name = name_image1
	get_node(pair_1_card_2).card_face = image1
	get_node(pair_1_card_2).card_name = name_image1
	
	get_node(pair_2_card_1).card_face = image2
	get_node(pair_2_card_1).card_name = name_image2
	get_node(pair_2_card_2).card_face = image2
	get_node(pair_2_card_2).card_name = name_image2
	
	get_node(pair_3_card_1).card_face = image3
	get_node(pair_3_card_1).card_name = name_image3
	get_node(pair_3_card_2).card_face = image3
	get_node(pair_3_card_2).card_name = name_image3
	
	get_node(pair_4_card_1).card_face = image4
	get_node(pair_4_card_1).card_name = name_image4
	get_node(pair_4_card_2).card_face = image4
	get_node(pair_4_card_2).card_name = name_image4
	
	get_node(pair_5_card_1).card_face = image5
	get_node(pair_5_card_1).card_name = name_image5
	get_node(pair_5_card_2).card_face = image5
	get_node(pair_5_card_2).card_name = name_image5
	
	get_node(pair_6_card_1).card_face = image6
	get_node(pair_6_card_1).card_name = name_image6
	get_node(pair_6_card_2).card_face = image6
	get_node(pair_6_card_2).card_name = name_image6
	
	init = true

func _check_if_pair():
	if get_node("CardOneName").text == get_node("CardTwoName").text:
		get_node("CheckBox").text = "="
		last_try_was_pair = true
		number_of_matches += 1
		get_node("NumberOfMatches").text = "Number of Matches: " + str(number_of_matches)
	if get_node("CardOneName").text != "Card 1"&&get_node("CardTwoName").text != "Card 2":
		if get_node("CardOneName").text != get_node("CardTwoName").text:
			_disable_all_cards_clicks()
			get_node("CheckBox").text = "!="
			var waiting_timer = Timer.new()
			waiting_timer.set_wait_time(1)
			waiting_timer.set_one_shot(true)
			self.add_child(waiting_timer)
			waiting_timer.start()
			await waiting_timer.timeout
			_reset_card_name_strings_and_check_box()
			_turn_around_cards()
			_enable_all_cards_clicks()

	if number_of_matches == 6:
		var timer = Timer.new()
		timer.wait_time = 5.0  
		timer.one_shot = true 
		add_child(timer)  
		timer.start()  
		await timer.timeout
		get_tree().change_scene_to_file("res://src/minigames/memory/memory.tscn")


func _reset_card_name_strings_and_check_box():
	get_node("CardOneName").text = card_one_string
	get_node("CardTwoName").text = card_two_string
	get_node("CheckBox").text = "?"

func _turn_around_cards():
	var card_one_path = NodePath(card_one_checked_if_pairing)
	var card_two_path = NodePath(card_two_checked_if_pairing)
	get_node(card_one_path).get_node("Sprite").texture = default_image
	get_node(card_two_path).get_node("Sprite").texture = default_image

func _disable_all_cards_clicks():
	get_node("Card1").click_enabled = false
	get_node("Card2").click_enabled = false
	get_node("Card3").click_enabled = false
	get_node("Card4").click_enabled = false
	get_node("Card5").click_enabled = false
	get_node("Card6").click_enabled = false
	get_node("Card7").click_enabled = false
	get_node("Card8").click_enabled = false
	get_node("Card9").click_enabled = false
	get_node("Card10").click_enabled = false
	get_node("Card11").click_enabled = false
	get_node("Card12").click_enabled = false

func _enable_all_cards_clicks():
	if get_node("Card1").get_node("Sprite").texture == default_image:
		get_node("Card1").click_enabled = true
	if get_node("Card2").get_node("Sprite").texture == default_image:
		get_node("Card2").click_enabled = true
	if get_node("Card3").get_node("Sprite").texture == default_image:
		get_node("Card3").click_enabled = true
	if get_node("Card4").get_node("Sprite").texture == default_image:
		get_node("Card4").click_enabled = true
	if get_node("Card5").get_node("Sprite").texture == default_image:
		get_node("Card5").click_enabled = true
	if get_node("Card6").get_node("Sprite").texture == default_image:
		get_node("Card6").click_enabled = true
	if get_node("Card7").get_node("Sprite").texture == default_image:
		get_node("Card7").click_enabled = true
	if get_node("Card8").get_node("Sprite").texture == default_image:
		get_node("Card8").click_enabled = true
	if get_node("Card9").get_node("Sprite").texture == default_image:
		get_node("Card9").click_enabled = true
	if get_node("Card10").get_node("Sprite").texture == default_image:
		get_node("Card10").click_enabled = true
	if get_node("Card11").get_node("Sprite").texture == default_image:
		get_node("Card11").click_enabled = true
	if get_node("Card12").get_node("Sprite").texture == default_image:
		get_node("Card12").click_enabled = true

