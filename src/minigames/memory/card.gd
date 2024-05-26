extends Area2D

var card_name
var card_face
var card_back
var click_enabled = true
var normal_cursor = preload("res://assets/cursors/Cursor.png")
var hover_cursor = preload("res://assets/cursors/hand.png")

func _ready():
    card_name = "Empty"
    card_face = preload("res://assets/minigames/memory/box.png")
    card_back = preload("res://assets/minigames/memory/box.png")
    get_node("Sprite").texture = card_back
    connect("mouse_entered", self._on_mouse_entered)
    connect("mouse_exited", self._on_mouse_exited)

func _input_event(viewport, event, shape_idx):
    if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed():
        on_click()

func _on_mouse_entered():
    Input.set_custom_mouse_cursor(hover_cursor, Input.CURSOR_ARROW, Vector2(16, 10))

func _on_mouse_exited():
    Input.set_custom_mouse_cursor(normal_cursor, Input.CURSOR_ARROW, Vector2(16, 10))

func on_click():
    if click_enabled:
        if get_parent().last_try_was_pair:
            get_parent().last_try_was_pair = false
            get_parent()._reset_card_name_strings_and_check_box()
        click_enabled = false
        get_node("Sprite").texture = card_face
        if get_parent().get_node("CardOneName").text == "Card 1":
            get_parent().get_node("CardOneName").text = card_name
            get_parent().card_one_checked_if_pairing = name
        elif get_parent().get_node("CardOneName").text != "Card 1":
            if get_parent().get_node("CardTwoName").text == "Card 2":
                get_parent().get_node("CardTwoName").text = card_name
                get_parent().card_two_checked_if_pairing = name
                get_parent()._check_if_pair()
