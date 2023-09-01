minetest.register_on_player_hpchange(function(player, hp_change)
	if hb.players[player:get_player_name()] then
        
        if hp_change >= 1 then
            hb.change_hudbar(player, "health", health, health_max, "hudbars_icon_health2.png", "hudbars_bgicon_health2.png")
            minetest.after(0.2, function(hb1) hb.change_hudbar(player, "health", health, health_max, "hudbars_icon_health.png", "hudbars_bgicon_health.png") end, hb1)
        else
            hb.change_hudbar(player, "health", health, health_max, "hudbars_icon_health2.png", "hudbars_bgicon_health2.png")        
            minetest.after(0.2, function(hb1) hb.change_hudbar(player, "health", health, health_max, "hudbars_icon_health.png", "hudbars_bgicon_health.png") end, hb1)
            minetest.after(0.3, function(hb2) hb.change_hudbar(player, "health", health, health_max, "hudbars_icon_health2.png", "hudbars_bgicon_health2.png") end, hb2)
	        minetest.after(0.4, function(hb1) hb.change_hudbar(player, "health", health, health_max, "hudbars_icon_health.png", "hudbars_bgicon_health.png") end, hb1)
        end
    end
end)
