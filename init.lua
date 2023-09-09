function clamp(val, lower, upper)
     return math.max(lower, math.min(upper, val))
end

minetest.register_on_joinplayer(function(player)
    hb.hide_hudbar(player, "health")
-- define 10 individual heart bars (one per heart)

    h1 = player:hud_add({
		name = "h1",
		hud_elem_type = "statbar",
		position = {x = 0.5, y = 1},
		size = {x = 24, y = 24},
		text = "hudbars_icon_health.png",
		number = clamp(player:get_hp(), 0, 2),
		text2 = "hudbars_bgicon_health.png",
		item = 2,
		alignment = {x = -1, y = -1},
		offset = {x = -258, y = -90},
		max = 0,
	})     
    
    h2 = player:hud_add({
		name = "h2",
		hud_elem_type = "statbar",
		position = {x = 0.5, y = 1},
		size = {x = 24, y = 24},
		text = "hudbars_icon_health.png",
		number = clamp(player:get_hp(), 2, 4),
		text2 = "hudbars_bgicon_health.png",
		item = 2,
		alignment = {x = -1, y = -1},
		offset = {x = -234, y = -90},
		max = 0,
	})

    h3 = player:hud_add({
		name = "h3",
		hud_elem_type = "statbar",
		position = {x = 0.5, y = 1},
		size = {x = 24, y = 24},
		text = "hudbars_icon_health.png",
		number = 2,
		text2 = "hudbars_bgicon_health.png",
		item = 2,
		alignment = {x = -1, y = -1},
		offset = {x = -210, y = -90},
		max = 0,
	})

    h4 = player:hud_add({
		name = "h4",
		hud_elem_type = "statbar",
		position = {x = 0.5, y = 1},
		size = {x = 24, y = 24},
		text = "hudbars_icon_health.png",
		number = 2,
		text2 = "hudbars_bgicon_health.png",
		item = 2,
		alignment = {x = -1, y = -1},
		offset = {x = -186, y = -90},
		max = 0,
	})

    h5 = player:hud_add({
		name = "h5",
		hud_elem_type = "statbar",
		position = {x = 0.5, y = 1},
		size = {x = 24, y = 24},
		text = "hudbars_icon_health.png",
		number = 2,
		text2 = "hudbars_bgicon_health.png",
		item = 2,
		alignment = {x = -1, y = -1},
		offset = {x = -162, y = -90},
		max = 0,
	})

    h6 = player:hud_add({
		name = "h6",
		hud_elem_type = "statbar",
		position = {x = 0.5, y = 1},
		size = {x = 24, y = 24},
		text = "hudbars_icon_health.png",
		number = 2,
		text2 = "hudbars_bgicon_health.png",
		item = 2,
		alignment = {x = -1, y = -1},
		offset = {x = -138, y = -90},
		max = 0,
	})

    h7 = player:hud_add({
		name = "h7",
		hud_elem_type = "statbar",
		position = {x = 0.5, y = 1},
		size = {x = 24, y = 24},
		text = "hudbars_icon_health.png",
		number = 2,
		text2 = "hudbars_bgicon_health.png",
		item = 2,
		alignment = {x = -1, y = -1},
		offset = {x = -114, y = -90},
		max = 0,
	})

    h8 = player:hud_add({
		name = "h8",
		hud_elem_type = "statbar",
		position = {x = 0.5, y = 1},
		size = {x = 24, y = 24},
		text = "hudbars_icon_health.png",
		number = 2,
		text2 = "hudbars_bgicon_health.png",
		item = 2,
		alignment = {x = -1, y = -1},
		offset = {x = -90, y = -90},
		max = 0,
	})

    h9 = player:hud_add({
		name = "h9",
		hud_elem_type = "statbar",
		position = {x = 0.5, y = 1},
		size = {x = 24, y = 24},
		text = "hudbars_icon_health.png",
		number = 2,
		text2 = "hudbars_bgicon_health.png",
		item = 2,
		alignment = {x = -1, y = -1},
		offset = {x = -66, y = -90},
		max = 0,
	})

    h10 = player:hud_add({
		name = "h10",
		hud_elem_type = "statbar",
		position = {x = 0.5, y = 1},
		size = {x = 24, y = 24},
		text = "hudbars_icon_health.png",
		number = 2,
		text2 = "hudbars_bgicon_health.png",
		item = 2,
		alignment = {x = -1, y = -1},
		offset = {x = -42, y = -90},
		max = 0,
	})


end
)

minetest.register_globalstep(function(dtime)
    for _,player in pairs(minetest.get_connected_players()) do
        hb.hide_hudbar(player, "health")
        if player:get_hp() <= 4 then      
            -- shake one frame every globalstep
            shake_once(player)                    
        else     
                      
            reset_pos(player)
        end
    end
end
)

-- goofy ahh functions

function shake_once(player)

    player:hud_change(h1, "offset", {x = -258, y = -2*math.random(0,1) + -90})
    player:hud_change(h2, "offset", {x = -234, y = -2*math.random(0,1) + -90})
    player:hud_change(h3, "offset", {x = -210, y = -2*math.random(0,1) + -90})
    player:hud_change(h4, "offset", {x = -186, y = -2*math.random(0,1) + -90})
    player:hud_change(h5, "offset", {x = -162, y = -2*math.random(0,1) + -90})
    player:hud_change(h6, "offset", {x = -138, y = -2*math.random(0,1) + -90})
    player:hud_change(h7, "offset", {x = -114, y = -2*math.random(0,1) + -90})
    player:hud_change(h8, "offset", {x = -90, y = -2*math.random(0,1) + -90})
    player:hud_change(h9, "offset", {x = -66, y = -2*math.random(0,1) + -90})
    player:hud_change(h10, "offset", {x = -42, y = -2*math.random(0,1) + -90})
end

function reset_pos(player)

    player:hud_change(h1, "offset", {x = -258, y = -90})
    player:hud_change(h2, "offset", {x = -234, y = -90})
    player:hud_change(h3, "offset", {x = -210, y = -90})
    player:hud_change(h4, "offset", {x = -186, y = -90})
    player:hud_change(h5, "offset", {x = -162, y = -90})
    player:hud_change(h6, "offset", {x = -138, y = -90})
    player:hud_change(h7, "offset", {x = -114, y = -90})
    player:hud_change(h8, "offset", {x = -90, y = -90})
    player:hud_change(h9, "offset", {x = -66, y = -90})
    player:hud_change(h10, "offset", {x = -42, y = -90})
end

function flash_on(player)
    
    player:hud_change(h1, "text", "hudbars_icon_health2.png")
    player:hud_change(h1, "text2", "hudbars_bgicon_health2.png")
    player:hud_change(h2, "text", "hudbars_icon_health2.png")
    player:hud_change(h2, "text2", "hudbars_bgicon_health2.png")
    player:hud_change(h3, "text", "hudbars_icon_health2.png")
    player:hud_change(h4, "text", "hudbars_icon_health2.png")
    player:hud_change(h5, "text", "hudbars_icon_health2.png")
    player:hud_change(h6, "text", "hudbars_icon_health2.png")
    player:hud_change(h7, "text", "hudbars_icon_health2.png")
    player:hud_change(h8, "text", "hudbars_icon_health2.png")
    player:hud_change(h9, "text", "hudbars_icon_health2.png")
    player:hud_change(h10, "text", "hudbars_icon_health2.png")
    player:hud_change(h3, "text2", "hudbars_bgicon_health2.png")
    player:hud_change(h4, "text2", "hudbars_bgicon_health2.png")
    player:hud_change(h5, "text2", "hudbars_bgicon_health2.png")
    player:hud_change(h6, "text2", "hudbars_bgicon_health2.png")
    player:hud_change(h7, "text2", "hudbars_bgicon_health2.png")
    player:hud_change(h8, "text2", "hudbars_bgicon_health2.png")
    player:hud_change(h9, "text2", "hudbars_bgicon_health2.png")
    player:hud_change(h10, "text2", "hudbars_bgicon_health2.png")

end

function flash_off(player)
        
    player:hud_change(h1, "text", "hudbars_icon_health.png")
    player:hud_change(h1, "text2", "hudbars_bgicon_health.png")
    player:hud_change(h2, "text", "hudbars_icon_health.png")
    player:hud_change(h2, "text2", "hudbars_bgicon_health.png")
    player:hud_change(h3, "text", "hudbars_icon_health.png")
    player:hud_change(h4, "text", "hudbars_icon_health.png")
    player:hud_change(h5, "text", "hudbars_icon_health.png")
    player:hud_change(h6, "text", "hudbars_icon_health.png")
    player:hud_change(h7, "text", "hudbars_icon_health.png")
    player:hud_change(h8, "text", "hudbars_icon_health.png")
    player:hud_change(h9, "text", "hudbars_icon_health.png")
    player:hud_change(h10, "text", "hudbars_icon_health.png")
    player:hud_change(h3, "text2", "hudbars_bgicon_health.png")
    player:hud_change(h4, "text2", "hudbars_bgicon_health.png")
    player:hud_change(h5, "text2", "hudbars_bgicon_health.png")
    player:hud_change(h6, "text2", "hudbars_bgicon_health.png")
    player:hud_change(h7, "text2", "hudbars_bgicon_health.png")
    player:hud_change(h8, "text2", "hudbars_bgicon_health.png")
    player:hud_change(h9, "text2", "hudbars_bgicon_health.png")
    player:hud_change(h10, "text2", "hudbars_bgicon_health.png")

end

minetest.register_on_player_hpchange(function(player, hp_change)  
    player:hud_change(h1, "number", clamp(player:get_hp() + hp_change, 0, 2))
    player:hud_change(h2, "number", clamp(player:get_hp() + hp_change, 2, 4) - 2)
    player:hud_change(h3, "number", clamp(player:get_hp() + hp_change, 4, 6) - 4)
    player:hud_change(h4, "number", clamp(player:get_hp() + hp_change, 6, 8) - 6)
    player:hud_change(h5, "number", clamp(player:get_hp() + hp_change, 8, 10) - 8)
    player:hud_change(h6, "number", clamp(player:get_hp() + hp_change, 10, 12) - 10)
    player:hud_change(h7, "number", clamp(player:get_hp() + hp_change, 12, 14) - 12)
    player:hud_change(h8, "number", clamp(player:get_hp() + hp_change, 14, 16) - 14)
    player:hud_change(h9, "number", clamp(player:get_hp() + hp_change, 16, 18) - 16)
    player:hud_change(h10, "number", clamp(player:get_hp() + hp_change, 18, 20) - 18)



    if hb.players[player:get_player_name()] then
        hp = player:get_hp()
        if hp_change >= 1 then
            --  flash once for healing            
            
            flash_on(player)

            minetest.after(0.2, function(hb1) flash_off(player)  end, hb1)
            
        else
            -- flash twice for getting hurt
            
            flash_on(player)
            
            minetest.after(0.2, function(hb1) flash_off(player)  end, hb1)
            
            minetest.after(0.3, function(hb2) flash_on(player)end, hb2)
	        
            minetest.after(0.4, function(hb1) flash_off(player) end, hb1)
            
        end
    end
end
)
