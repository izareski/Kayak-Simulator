global.playerY = y

// Player movement code
if keyboard_check(ord("W")) {
    image_angle = 90;
    if (!place_meeting(x, y - playerSpeed, obj_grass)) {
        y -= playerSpeed;
		global.playerY = y
    }
}

else if keyboard_check(ord("A")) {
    image_angle = 180;
    if (!place_meeting(x - playerSpeed, y, obj_grass)) {
        x -= playerSpeed;
    }
	
	if x < 0 {
		global.playerY = y
		room_goto_previous()
	}
}

else if keyboard_check(ord("S")) {
    image_angle = 270;
    if (!place_meeting(x, y + playerSpeed, obj_grass)) {
        y += playerSpeed;
		global.playerY = y
    }
}

else if keyboard_check(ord("D")) {
    image_angle = 0;
    if (!place_meeting(x + playerSpeed, y, obj_grass)) {
        x += playerSpeed;
    }
	
	if x > roomWidth {
		room_goto_next()
	}
}

// Sprite handling code
if keyboard_check(vk_nokey) {
    sprite_index = spr_idle;
} else {
    sprite_index = spr_kayak;
}