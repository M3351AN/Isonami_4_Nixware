local username = client.get_username()
client.notify("Salut ".. username ..", welcome use Isonami.")
client.notify("Isonamiv1 by M3351AN#7417 A.K.A. Teikumo.")
function on_credit()
    client.notify("You are using Isonami via teiku.moe.")
end
client.register_callback("round_start", on_credit)
--=========================================================================================================================
ffi = require 'ffi'
ffi.cdef[[
    typedef uintptr_t (__thiscall* GetClientEntity_4242425_t)(void*, int);
]]

ENTITY_LIST_POINTER = ffi.cast("void***", se.create_interface("client.dll", "VClientEntityList003")) or error("Failed to find VClientEntityList003!")
GET_CLIENT_ENTITY_FN = ffi.cast("GetClientEntity_4242425_t", ENTITY_LIST_POINTER[0][3])

ffi_helpers = {
    get_animstate_offset = function()
        return 14612
    end,

    get_entity_address = function(entity_index)
        local addr = GET_CLIENT_ENTITY_FN(ENTITY_LIST_POINTER, entity_index)
        return addr
    end
}

--RAGE
--=========================================================================================================================


local dmg_override = ui.add_key_bind("dmg override", "dmg_override", 0, 1)
local dmg_override_value = ui.add_slider_int("dmg override value", "dmg_override_value", 1, 120, 1)

local hitscan_override = ui.add_key_bind('hitscan override', 'hitscan_override', 0, 1)
local hitscan_override_type = ui.add_combo_box("hitscan override type", "hitscan_override_type", { "head", "chest", "pelvis", "stomach", "legs", "foot" }, 0)

local safe_points_override = ui.add_key_bind("safe points override", "safe_points_override", 0, 1)
local safe_points_override_type = ui.add_combo_box("safe points override type", "safe_points_override_type", { "default", "prefer", "force" }, 0)

local exploit_hide_shots = ui.add_key_bind("exploit hide shots", "exploit_hide_shots", 0, 2)
local exploit_doubletap = ui.add_key_bind("exploit doubletap", "exploit_doubletap", 0, 2)

local scout_boost = ui.add_key_bind("scout boost", "scout_boost", 0, 1)
local boost_min = ui.add_slider_int("min HC", "min_HC", 0, 100, 50)
local boost_min = ui.add_slider_int("high velocity HC", "high_HC", 0, 100, 50)
local boost_min = ui.add_slider_int("low velocity HC", "low_HC", 0, 100, 50)
local boost_max = ui.add_slider_int("max HC", "max_HC", 0, 100, 75)

local ping_spike = ui.add_key_bind("ping spike", "ping_spike", 0, 1)
local boost_min = ui.add_slider_int("min PS", "min_PS", 0, 200, 50)
local boost_max = ui.add_slider_int("max PS", "max_PS", 0, 200, 75)




--ANTI-AIM
--=========================================================================================================================
local fast_filp = ui.add_check_box("desync fast filp", "fast_filp", false)

local legit_aa = ui.add_key_bind("legit aa", "legit_aa", 0, 2)

local low_delta_on_slowwalk = ui.add_check_box("low delta on slowwalk", "low_delta_on_slowwalk", false)
local low_delta_angle = ui.add_slider_int("low delta angle", "low_delta_angle", 0, 60, 0)

local at_targets_only_in_air = ui.add_check_box("at targets only in air", "at_targets_only_in_air", false)

local slowwalk_breaker = ui.add_key_bind("slowwalk breaker", "slowwalk_breaker", 0,1)


--VISUALS
--=========================================================================================================================
local indicators = ui.add_check_box("indicators", "indicators", false)
local radar_hack = ui.add_check_box("radar hack", "radar_hack", false)
local logs = ui.add_check_box("logs (soon)", "logs", false)
local thirdperson_distance = ui.add_slider_int("thirdperson distance value", "thirdperson_distance", 0, 200, 150)
local watermark = ui.add_check_box("watermark", "watermark", false)
local watermark_x = ui.add_slider_int("watermark_x", "watermark_x", 0, engine.get_screen_size().x, 2)
local watermark_y = ui.add_slider_int("watermark_y", "watermark_y", 0, engine.get_screen_size().y, 0)
local hotkey_binds = ui.add_check_box("hotkey binds", "hotkey_binds", false)
local hotkey_binds_x = ui.add_slider_int("hotkey_binds_x", "hotkey_binds_x", 0, engine.get_screen_size().x, 2)
local hotkey_binds_y = ui.add_slider_int("hotkey_binds_y", "hotkey_binds_y", 0, engine.get_screen_size().y, 0)


--MISC
--=========================================================================================================================
local ragdoll = ui.add_check_box("ragdoll", "ragdoll", false)
local kill_say =  ui.add_check_box("kill say", "kill_say", false)


--netvar and function
--=========================================================================================================================
local m_bPinPulled = se.get_netvar("DT_BaseCSGrenade", "m_bPinPulled")
local m_fThrowTime = se.get_netvar("DT_BaseCSGrenade", "m_fThrowTime")
local m_hActiveWeapon = se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon")
local m_iHealth = se.get_netvar("DT_BasePlayer", "m_iHealth")
local m_hGroundEntity = se.get_netvar("DT_BasePlayer", "m_hGroundEntity")
local m_bSpotted = se.get_netvar("DT_BaseEntity", "m_bSpotted")


function hasbit(a, b)
    return a % (b + b) >= b
end


--=========================================================================================================================


--RAGE
--=========================================================================================================================


function on_dmg_override()
    override = {
        dmg = { dmg_override:is_active(), dmg_override_value:get_value() }
    }

    entities = entitylist.get_players(0)

    for i = 1, #entities do
        index = entities[i]:get_index()

        if override.dmg[1] then
            ragebot.override_min_damage(index, override.dmg[2])
        end
    end
end


client.register_callback('create_move', on_dmg_override)


--=========================================================================================================================
function on_hitscan_override()
    override = {
        hitscan = { hitscan_override:is_active(), hitscan_override_type:get_value() }
    }

    entities = entitylist.get_players(0)

    for i = 1, #entities do
        index = entities[i]:get_index()

        if override.hitscan[1] then
            for i = 0, 5 do
                ragebot.override_hitscan(index, i, override.hitscan[2] == i)
            end
        end
    end
end
client.register_callback('create_move', on_hitscan_override)


--=========================================================================================================================
function on_safe_points_override()
    override = {
        safe_points = { safe_points_override:is_active(), safe_points_override_type:get_value() }
    }

    entities = entitylist.get_players(0)
    
    for i = 1, #entities do
        index = entities[i]:get_index()

        if override.safe_points[1] then
            ragebot.override_safe_point(index, override.safe_points[2])
        end
    end
end
client.register_callback('create_move', on_safe_points_override)


--=========================================================================================================================
function on_exploit()
    is_exploit = ui.get_combo_box("rage_active_exploit")
    is_exploit_bind = ui.get_key_bind("rage_active_exploit_bind")

    if exploit_hide_shots:is_active() then
        is_exploit_bind:set_type(0)
        is_exploit:set_value(1)
    end

    if exploit_doubletap:is_active() then
        is_exploit_bind:set_type(0)
        is_exploit:set_value(2)
    end

    if not exploit_hide_shots:is_active() and not exploit_doubletap:is_active() then
        is_exploit_bind:set_type(3)
        is_exploit:set_value(0)
    end
end

function on_unload_exploit()
    is_exploit = ui.get_combo_box("rage_active_exploit")
    is_exploit_bind = ui.get_key_bind("rage_active_exploit_bind")

    is_exploit:set_value(0)
    is_exploit_bind:set_type(0)
end
client.register_callback("create_move", on_exploit)
client.register_callback('unload', on_unload_exploit)
--=========================================================================================================================

local function on_move(cmd) 
	local localplayer = entitylist.get_local_player()
	if not localplayer then return end
    ffi.cast("float*", ffi_helpers.get_entity_address(localplayer:get_index()) + 10100)[0] = 0

end

function on_scout_boost(cmd)  
    if switch0 then
        switch0 = false
    else
         switch0 = true
    end

    if switch0 then
        local Scout_HC = ui.get_slider_int("rage_scout_hitchance"):set_value(min)
    else
        local Scout_HC = ui.get_slider_int("rage_scout_hitchance"):set_value(max_HC)
    end
end

local velocity = nil
local m_vecVelocity = {
    [0] = se.get_netvar("DT_BasePlayer", "m_vecVelocity[0]"),
    [1] = se.get_netvar("DT_BasePlayer", "m_vecVelocity[1]")
}

local function low_speed(cmd)
    local player = entitylist.get_entity_by_index(engine.get_local_player())
    
    if player then
        velocity = math.sqrt(player:get_prop_float(m_vecVelocity[0]) ^ 2 + player:get_prop_float(m_vecVelocity[1]) ^ 2)
    end

    if velocity ~= nil then
        if velocity > 15 then
	min=high_HC
        else
	min=low_HC
        end
    end
end

client.register_callback("create_move", low_speed)
client.register_callback("create_move", on_move)
client.register_callback("create_move", on_scout_boost)

--=========================================================================================================================
function on_ping_spike(cmd)
    if ping_spike:is_active() then
        if switch1 then
            switch1 = false
        else
             switch1 = true
        end
    
        if switch1 then
            local flip_PS = ui.get_slider_int("misc_ping_spike_amount"):set_value(max_PS)
        else
            local flip_PS = ui.get_slider_int("misc_ping_spike_amount"):set_value(min_PS)
        end      
        
        	
    end
end
client.register_callback("create_move", on_ping_spike)


--RESOLVER
--=========================================================================================================================


function on_fast_filp(cmd)
    if fast_filp:get_value() == true then
               
        if switch2 then
            switch2 = false
        else
             switch2 = true
        end
    
        if switch2 then
            local antiaim_flip = ui.get_key_bind("antihit_antiaim_flip_bind"):set_type(0)
        else
            local antiaim_flip = ui.get_key_bind("antihit_antiaim_flip_bind"):set_type(1)
        end
    end
end

client.register_callback("create_move", on_fast_filp)


--ANTI-AIM
--=========================================================================================================================
function on_legit_aa()
    is_at_targets = ui.get_check_box("antihit_antiaim_at_targets")
    is_pitch = ui.get_combo_box("antihit_antiaim_pitch")
    is_yaw = ui.get_combo_box("antihit_antiaim_yaw")
    local_player = entitylist:get_local_player()

    if local_player:get_prop_int(m_iHealth) < 1 then
        return
    end

    if legit_aa:is_active() then
        is_at_targets:set_value(false)
        is_pitch:set_value(0)
        is_yaw:set_value(0)
    else
        is_pitch:set_value(1)
        is_yaw:set_value(1)
    end
end

function on_unload_legit_aa()
    is_pitch = ui.get_combo_box("antihit_antiaim_pitch")
    is_yaw = ui.get_combo_box("antihit_antiaim_yaw")

    is_pitch:set_value(1)
    is_yaw:set_value(1)
end
local a1 = 0
local a2 = 0
local speed = " "
function set_speed()
if slowwalk_breaker:is_active() then
    --if engine.is_in_game() then

    speed = {
        44,
        77,
        55,
        88,
        22,
        66
           
            }
            if a1 < globalvars.get_tick_count() then     
                a2 = a2 + 1
                if a2 > 6 then
                    a2 = 0
                end
                ui.get_slider_int("antihit_extra_slowwalk_speed"):set_value(speed[a2])
                a1 = globalvars.get_tick_count() + 20
            end
        end
    end
client.register_callback("paint", on_legit_aa)
client.register_callback('unload', on_unload_legit_aa)
client.register_callback("paint", set_speed)


--=========================================================================================================================
function on_low_delta_on_slowwalk()
    local_player = entitylist:get_local_player()

    if legit_aa:is_active() or local_player:get_prop_int(m_iHealth) < 1 then
        return
    end

    is_slowwalk_checkbox = ui.get_check_box("antihit_extra_slowwalk")
    is_slowwalk = ui.get_key_bind("antihit_extra_slowwalk_bind")
    is_desync_length = ui.get_slider_int("antihit_antiaim_desync_length")

    if local_player:get_prop_int(m_iHealth) < 1 then
        return
    end

    if is_slowwalk_checkbox:get_value() and is_slowwalk:is_active() and low_delta_on_slowwalk:get_value() then
        is_desync_length:set_value(low_delta_angle)
    else
        is_desync_length:set_value(60)
    end
end

function on_unload_low_delta_on_slowwalk()
    is_desync_length = ui.get_slider_int("antihit_antiaim_desync_length")

    is_desync_length:set_value(60)
end
client.register_callback("paint", on_low_delta_on_slowwalk)
client.register_callback('unload', on_unload_low_delta_on_slowwalk)


--=========================================================================================================================
function on_at_targets_only_in_air()
    is_at_targets = ui.get_check_box("antihit_antiaim_at_targets")
    local_player = entitylist:get_local_player()
    is_air = local_player:get_prop_bool(m_hGroundEntity)

    if local_player:get_prop_int(m_iHealth) < 1 then
        return
    end

    if at_targets_only_in_air:get_value() then
        if legit_aa:is_active() then
            is_at_targets:set_value(false)
            return
        end
        if is_air then
            is_at_targets:set_value(true)
        else
            is_at_targets:set_value(false)
        end
    end
end

function on_unload_on_at_targets_only_in_air()
    is_at_targets = ui.get_check_box("antihit_antiaim_at_targets")

    is_at_targets:set_value(false)
end
client.register_callback("create_move", on_at_targets_only_in_air)
client.register_callback("unload", on_unload_on_at_targets_only_in_air)


--VISUALS
--=========================================================================================================================
indicators_font = renderer.setup_font("C:/windows/fonts/verdana.ttf", 12, 0)
function on_indicators()
    screen = engine.get_screen_size()

    is_fake_duck = ui.get_key_bind("antihit_extra_fakeduck_bind")
    is_inverted = ui.get_key_bind("antihit_antiaim_flip_bind")
    is_exploit_type = ui.get_combo_box("rage_active_exploit")
    is_exploit_bind = ui.get_key_bind("rage_active_exploit_bind")

    is_slowwalk_checkbox = ui.get_check_box("antihit_extra_slowwalk")
    is_slowwalk = ui.get_key_bind("antihit_extra_slowwalk_bind")
    is_desync_length = ui.get_slider_int("antihit_antiaim_desync_length")

    if indicators:get_value() then
        if not legit_aa:is_active() then
            renderer.text('h', indicators_font_arrow, vec2_t.new(screen.x / 2 + 55, screen.y / 2 + 30), 30, color_t.new(255, 255, 255, 255))
        else
            renderer.text('h', indicators_font_arrow, vec2_t.new(screen.x / 2 + 55, screen.y / 2 + 30), 30, color_t.new(0, 0, 0, 100))
        end

        if is_fake_duck:is_active() then
            renderer.text('FD', indicators_font, vec2_t.new(screen.x / 2 - 7, screen.y / 2 + 30), 12, color_t.new(200, 190, 190, 255))
        end

        if not dmg_override:is_active() then
            renderer.text('DMG', indicators_font, vec2_t.new(screen.x / 2 - 12, screen.y / 2 + 40), 12, color_t.new(180, 180, 180, 255))
        else
            renderer.text('DMG', indicators_font, vec2_t.new(screen.x / 2 - 12, screen.y / 2 + 40), 12, color_t.new(180, 160, 0, 255))
        end

        renderer.text('ISONAMI', indicators_font, vec2_t.new(screen.x / 2 - 23, screen.y / 2 + 50), 12, color_t.new(105, 115, 175, 255))

        if legit_aa:is_active() then
            renderer.text('AA LEGIT', indicators_font, vec2_t.new(screen.x / 2 - 23, screen.y / 2 + 60), 12, color_t.new(255, 255, 255, 255))
        elseif is_desync_length:get_value() < 23 then
            renderer.text('LOW DELTA', indicators_font, vec2_t.new(screen.x / 2 - 30, screen.y / 2 + 60), 12, color_t.new(200, 120, 130, 255))
        elseif is_inverted:is_active() then
            renderer.text('RIGHT', indicators_font, vec2_t.new(screen.x / 2 - 16, screen.y / 2 + 60), 12, color_t.new(160, 160, 195, 255))
        else
            renderer.text('LEFT', indicators_font, vec2_t.new(screen.x / 2 - 12, screen.y / 2 + 60), 12, color_t.new(160, 160, 195, 255))
        end

        

        if is_exploit_type:get_value() == 2 and is_exploit_bind:is_active() then
            renderer.text('DT', indicators_font, vec2_t.new(screen.x / 2 - 7, screen.y / 2 + 70), 12, color_t.new(150, 150, 65, 255))
        elseif is_exploit_type:get_value() == 1 and is_exploit_bind:is_active() then
            renderer.text('ONSHOT', indicators_font, vec2_t.new(screen.x / 2 - 22, screen.y / 2 + 70), 12, color_t.new(150, 150, 65, 255))
        end
    end
end
client.register_callback("paint", on_indicators)


--=========================================================================================================================
function on_radar_hack()
    local_player = entitylist.get_players(0)

    if radar_hack:get_value() then
        for i = 1, #local_player do
            entities = local_player[i]

            if not entities:is_dormant() and entities:is_alive() then
                entities:set_prop_bool(m_bSpotted, true)
            end
        end
    end
end
client.register_callback("create_move", on_radar_hack)


--=========================================================================================================================
function on_thirdperson_distance()
    engine.execute_client_cmd("cam_idealdist " .. thirdperson_distance:get_value() .. "")
end

function on_unload_thirdperson_distance()
    engine.execute_client_cmd("cam_idealdist 150")
end
client.register_callback("create_move", on_thirdperson_distance)
client.register_callback("unload", on_unload_thirdperson_distance)


--=========================================================================================================================
watermark_font = renderer.setup_font("C:/windows/fonts/verdana.ttf", 13, 0)
function on_watermark()
    ping = se.get_latency()
    text = "teiku.moe | isonami | ping " .. ping .. "ms" 
    text_size = renderer.get_text_size(watermark_font, 13, text)
    x = watermark_x:get_value()
    y = watermark_y:get_value()

    if watermark:get_value() then
        renderer.rect_filled(vec2_t.new(x + 226, y + 2), vec2_t.new(x, y + 1), color_t.new(130, 255, 80, 255))
        renderer.text(text, watermark_font, vec2_t.new(x + 5, y + 5), 13, color_t.new(220, 220, 220, 255))
    end
end
client.register_callback("paint", on_watermark)


--=========================================================================================================================
hotkey_binds_font = renderer.setup_font("C:/windows/fonts/verdana.ttf", 13, 0)
type = { "always", "holding", "toggled", "disable" }
functions = {
["Slowwalk breaker"] = {reference = ui.get_key_bind("slowwalk_breaker")},
["Scout boost"] = {reference = ui.get_key_bind("scout_boost")},
["Pingspike"] = {reference = ui.get_key_bind("ping_spike")},       
["Jump bug"] = {reference = ui.get_key_bind("misc_jump_bug_bind"), exploit = 0},
["Edge jump"] = {reference = ui.get_key_bind("misc_edge_jump_bind"), exploit = 0},
["Damage override"] = {reference = dmg_override, exploit = 0},
["Hitscan override"] = {reference = hitscan_override, exploit = 0},
["Safe points override"] = {reference = safe_points_override, exploit = 0},
["Legit AA"] = {reference = legit_aa, exploit = 0},
["Thirdperson"] = {reference = ui.get_key_bind("visuals_other_thirdperson_bind"), exploit =	 0},
["Switch desync"] = {reference = ui.get_key_bind("antihit_antiaim_flip_bind"), exploit = 0},
["Fake duck"] = {reference = ui.get_key_bind("antihit_extra_fakeduck_bind"), exploit = 0},
["Autopeek"] = {reference = ui.get_key_bind("antihit_extra_autopeek_bind"), exploit = 0},
["Slow walk"] = {reference = ui.get_key_bind("antihit_extra_slowwalk_bind"), exploit = 0},
["Double tap"] = {reference = ui.get_key_bind("rage_active_exploit_bind"), exploit = 2},
["Hide shots"] = {reference = ui.get_key_bind("rage_active_exploit_bind"), exploit = 1},
};
function on_hotkey_binds()
    text = "keybinds"
    keybinds = {}
    x = hotkey_binds_x:get_value()
    y = hotkey_binds_y:get_value()
    for add, f in pairs(functions) do
        exploits = ui.get_combo_box("rage_active_exploit"):get_value()
        if f.exploit == 0 and f.reference:is_active() then
            table.insert(keybinds, add)
        end
        if f.exploit ~= 0 and exploits == f.exploit and f.reference:is_active() then
            table.insert(keybinds, add)
        end
    end

    if hotkey_binds:get_value() then
        for add, k in pairs(keybinds) do
            f = functions[k]
            state = "["..type[f.reference:get_type() + 1].."]"
            renderer.rect_filled(vec2_t.new(x + 190, y + 2), vec2_t.new(x, y + 1), color_t.new(130, 255, 80, 255))
            renderer.text(text, hotkey_binds_font, vec2_t.new(x + 5, y + 5), 13, color_t.new(220, 220, 220, 255))

            renderer.text(k, hotkey_binds_font, vec2_t.new(x + 10, y + 5 + (18 * add)), 13, color_t.new(255, 255, 255, 255))
            renderer.text(state, hotkey_binds_font, vec2_t.new(x + 150 - renderer.get_text_size(hotkey_binds_font, 12, state).x + 30, y + 5 + (18 * add)), 13, color_t.new(255, 255, 255, 255))
        end
    end
end
client.register_callback("paint", on_hotkey_binds)


--MISC
--=========================================================================================================================
function on_ragdoll()
    if ragdoll:get_value() then
        se.get_convar("cl_ragdoll_gravity"):set_int(-600)
    else
        se.get_convar("cl_ragdoll_gravity"):set_int(600)
    end
end

function on_unload_ragdoll()
    se.get_convar("cl_ragdoll_gravity"):set_int(600)
end
client.register_callback("create_move", on_ragdoll)
client.register_callback("unload", on_unload_ragdoll)


--=========================================================================================================================
function on_kill_say(event)
    local attacker_index = engine.get_player_for_user_id(event:get_int("attacker",0))
    local died_index = engine.get_player_for_user_id(event:get_int("userid",1))
    local me = engine.get_local_player()   
    local died_info = engine.get_player_info(died_index)
    local died_name = died_info.name

    if attacker_index == me and died_index ~= me then
        engine.execute_client_cmd("say Isonami, via Teiku.moe.")
    end
end
client.register_callback("player_death", on_kill_say)


--=========================================================================================================================