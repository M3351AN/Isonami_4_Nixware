ANTIBUG = {
    "\n",
    "                       _oo0oo_\n",
    "                      o8888888o\n",
    "                      88\" . \"88\n",
    "                      (| -_- |)\n",
    "                      0\\  =  /0\n",
    "                    ___/`---\'\\___\n",
    "                  .\' \\\\|     |# \'.\n",
    "                 / \\|||  :  |||# \\\n",
    "                / _||||| -:- |||||- \\\n",
    "               |   | \\\\  -  #/ |   |\n",
    "               | \\_|  \'\'\\---/\'\'  |_/ |\n",
    "               \\  .-\\__  \'-\'  ___/-. /\n",
    "             ___\'. .\'  /--.--\\  `. .\'___\n",
    "          .\"\" *<  `.___\\_<|>_/___.\' >* \"\".\n",
    "         | | :  `- \\`.;`\\ _ /`;.`/ - ` : | |\n",
    "         \\  \\ `_.   \\_ __\\ /__ _/   .-` /  /\n",
    "     =====`-.____`.___ \\_____/___.-`___.-\'=====\n",
    "\n",
    "              佛祖保佑         永无BUG\n",
    "Author: m1tzw#5953 A.K.A. Teikumo / Crespy / YKK\n",
    "\n"
    }--print at console
    local nixc = false
    if client.get_username() == "t.me/bat_crack SLAVA UKRAINI!" or client.get_username() == "t.me/bat_crack SLAVA UKRAINI!" then
        nixc = true--ya net rusky I do not wanna see any propaganda but cheating in a video game!!
    end
    if nixc then
        username = "nixc"
    else
        username = client.get_username()
    end
    client.notify("Salut ".. username ..", welcome use Isonami.")
    client.notify("Isonami [Kai] by M3351AN#7417 A.K.A. Teikumo.")
    ui.add_slider_int("              [ISONAMI.Kai]", "isonami", 3351, 3351, 3351)
    ui.add_slider_int("                    by.m1tzw#", "m3351an", 5953, 5953, 5953)
    local tab_list = ui.add_combo_box("tab list", "tab_list", {"[+]credit", "[+]rage", "[+]antiaim", "[+]visuals", "[+]misc"}, 0)
    
    client.register_callback('paint', from_list)
    
    function on_credit()
        client.notify("You are using Isonami.")
    end
    client.register_callback("round_start", on_credit)
    --=========================================================================================================================
    bit32 = require("bit32")
    ffi = require 'ffi'
    ffi.cdef[[
        struct c_color { unsigned char clr[4]; };
    
        typedef uintptr_t (__thiscall* GetClientEntity_4242425_t)(void*, int);
    
        typedef struct
        {
            float x;
            float y;
            float z;
        } Vector_t;
    
        typedef struct
        {
            char        pad0[0x60]; // 0x00
            void*       pEntity; // 0x60
            void*       pActiveWeapon; // 0x64
            void*       pLastActiveWeapon; // 0x68
            float        flLastUpdateTime; // 0x6C
            int            iLastUpdateFrame; // 0x70
            float        flLastUpdateIncrement; // 0x74
            float        flEyeYaw; // 0x78
            float        flEyePitch; // 0x7C
            float        flGoalFeetYaw; // 0x80
            float        flLastFeetYaw; // 0x84
            float        flMoveYaw; // 0x88
            float        flLastMoveYaw; // 0x8C // changes when moving/jumping/hitting ground
            float        flLeanAmount; // 0x90
            char        pad1[0x4]; // 0x94
            float        flFeetCycle; // 0x98 0 to 1
            float        flMoveWeight; // 0x9C 0 to 1
            float        flMoveWeightSmoothed; // 0xA0
            float        flDuckAmount; // 0xA4
            float        flHitGroundCycle; // 0xA8
            float        flRecrouchWeight; // 0xAC
            Vector_t    vecOrigin; // 0xB0
            Vector_t    vecLastOrigin;// 0xBC
            Vector_t    vecVelocity; // 0xC8
            Vector_t    vecVelocityNormalized; // 0xD4
            Vector_t    vecVelocityNormalizedNonZero; // 0xE0
            float        flVelocityLenght2D; // 0xEC
            float        flJumpFallVelocity; // 0xF0
            float        flSpeedNormalized; // 0xF4 // clamped velocity from 0 to 1
            float        flRunningSpeed; // 0xF8
            float        flDuckingSpeed; // 0xFC
            float        flDurationMoving; // 0x100
            float        flDurationStill; // 0x104
            bool        bOnGround; // 0x108
            bool        bHitGroundAnimation; // 0x109
            char        pad2[0x2]; // 0x10A
            float        flNextLowerBodyYawUpdateTime; // 0x10C
            float        flDurationInAir; // 0x110
            float        flLeftGroundHeight; // 0x114
            float        flHitGroundWeight; // 0x118 // from 0 to 1, is 1 when standing
            float        flWalkToRunTransition; // 0x11C // from 0 to 1, doesnt change when walking or crouching, only running
            char        pad3[0x4]; // 0x120
            float        flAffectedFraction; // 0x124 // affected while jumping and running, or when just jumping, 0 to 1
            char        pad4[0x208]; // 0x128
            float        flMinBodyYaw; // 0x330
            float        flMaxBodyYaw; // 0x334
            float        flMinPitch; //0x338
            float        flMaxPitch; // 0x33C
            int            iAnimsetVersion; // 0x340
        } CCSGOPlayerAnimationState_534535_t;
        struct Weapon_Info_t
        {
          char _0x0000[20];
          __int32 max_clip;
          char _0x0018[12];
          __int32 max_reserved_ammo;
          char _0x0028[96];
          char* hud_name;
          char* weapon_name;
          char _0x0090[60];
          __int32 type;
          __int32 price;
          __int32 reward;
          char _0x00D8[20];
          bool full_auto;
          char _0x00ED[3];
          __int32 damage;
          float armor_ratio;
          __int32 bullets;
          float penetration;
          char _0x0100[8];
          float range;
          float range_modifier;
          char _0x0110[16];
          bool silencer;
          char _0x0121[15];
          float max_speed;
          float max_speed_alt;
          char _0x0138[76];
          __int32 recoil_seed;
          char _0x0188[32];
        };
        struct WeaponInfo_t
        {
            char _0x0000[20]; int iMaxClip; char _0x0018[12]; int iMaxReservedAmmo; char _0x0028[96]; char* szHUDName; char* szWeaponName; char _0x0090[60]; int iType; int iPrice; int iReward; char _0x00D8[20]; bool bFullAmmo; char _0x00ED[3]; int iDamage; float flArmorRatio; int iBullets; float flPenetration; char _0x0100[8]; float flRange; float flRangeModifier; char _0x0110[16]; bool bSilencer; char _0x0121[15]; float flMaxSpeed; float flMaxSpeedAlt; char _0x0138[76]; int iRecoilSeed; char _0x0188[32];
            char _0x0000[20];
            __int32 max_clip;    
            char _0x0018[12];
            __int32 max_reserved_ammo;
            char _0x0028[96];
            char* hud_name;            
            char* weapon_name;        
            char _0x0090[60];
            __int32 type;            
            __int32 price;            
            __int32 reward;            
            char _0x00D8[20];
            bool full_auto;        
            char _0x00ED[3];
            __int32 damage;            
            float armor_ratio;         
            __int32 bullets;    
            float penetration;    
            char _0x0100[8];
            float range;            
            float range_modifier;    
            char _0x0110[16];
            bool silencer;            
            char _0x0121[15];
            float max_speed;        
            float max_speed_alt;
            char _0x0138[76];
            __int32 recoil_seed;
            char _0x0188[32];
        };
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
    --=========================================================================================================================
    local github = ui.add_check_box("go to github", "github", false)
    local upd = ui.add_check_box("get update", "upd", false)
    --RAGE
    --=========================================================================================================================
    --local shot_delay = ui.add_slider_int("shot delay[test]", "shot_delay", 0, 300, 0)
    
    local jump_scout                    = ui.add_check_box("jump scout", "jump_scout", false)
    
    local aim_angle_fix                 = ui.add_key_bind("aim angle fix", "aim_angle_fix", 0, 1)

    local fl_0_onshot                   = ui.add_check_box("open dt onshot", "fl_0_onshot", false)

    local baim_hitboxes = ui.add_multi_combo_box("baim hitboxes", "baim_hitboxes", { "head", "chest", "pelvis", "stomach", "legs", "foot" }, { false, false, false, false, false, false })
    local baim_conditions = ui.add_multi_combo_box("baim conditions", "baim_conditions", { "standing", "slowwalking", "lethal" }, { false, false ,false })
    local onshot_hitboxes = ui.add_multi_combo_box("on shot hitboxes", "onshot_hitboxes", { "head", "chest", "pelvis", "stomach", "legs", "foot" }, { false, false, false, false, false, false })
    local onshot_time = ui.add_slider_float("on shot time", "onshot_time", 0, 0.2, 0)

    local dmg_override                  = ui.add_key_bind("dmg override", "dmg_override", 0, 1)
    local dmg_override_value            = ui.add_slider_int("dmg override value", "dmg_override_value", 1, 120, 1)
    
    local hitscan_override              = ui.add_key_bind('hitscan override', 'hitscan_override', 0, 1)
    local hitscan_override_type         = ui.add_combo_box("hitscan override type", "hitscan_override_type", { "head", "chest", "pelvis", "stomach", "legs", "foot" }, 0)
    
    local safe_points_override          = ui.add_key_bind("safe points override", "safe_points_override", 0, 1)
    local safe_points_override_type     = ui.add_combo_box("safe points override type", "safe_points_override_type", { "default", "prefer", "force" }, 0)
    
    local exploit_hide_shots            = ui.add_key_bind("exploit hide shots", "exploit_hide_shots", 0, 2)
    local exploit_doubletap             = ui.add_key_bind("exploit doubletap", "exploit_doubletap", 0, 2)
    
    local scout_boost                   = ui.add_key_bind("scout boost", "scout_boost", 0, 1)
    
    --local boost_min = ui.add_slider_int("min HC", "min_HC", 0, 100, 50)
    local boost_high                    = ui.add_slider_int("high velocity HC", "high_HC", 0, 100, 50)
    local boost_low                     = ui.add_slider_int("low velocity HC", "low_HC", 0, 100, 50)
    local boost_max                     = ui.add_slider_int("max HC", "max_HC", 0, 100, 75)
    
    local ping_spike                    = ui.add_key_bind("ping spike on key", "ping_spike", 0, 1)
    local ping_spike_a                  = ui.add_slider_int("ovr. ping spike", "PS_a", 0, 200, 50)
    local ping_spike_b                  = ui.add_slider_int("def. ping spike", "PS_b", 0, 200, 50)
    
    table_rage = {jump_scout,aim_angle_fix,fl_0_onshot,baim_hitboxes,baim_conditions,onshot_hitboxes,onshot_time,dmg_override,dmg_override_value,hitscan_override,hitscan_override_type,safe_points_override,safe_points_override_type,exploit_hide_shots,exploit_doubletap,scout_boost,boost_high,boost_low,boost_max,ping_spike,ping_spike_a,ping_spike_b}
    
    
    --ANTI-AIM
    --=========================================================================================================================
    local antihit_antiaim_left      = ui.add_key_bind("left", "antihit_antiaim_left", 0, 2)
    local antihit_antiaim_backwards = ui.add_key_bind("backwards", "antihit_antiaim_backwards", 0, 2)
    local antihit_antiaim_right     = ui.add_key_bind("right", "antihit_antiaim_right", 0, 2)

    local legit_aa                  = ui.add_key_bind("legit aa", "legit_aa", 0, 2)
    
    local at_targets_only_in_air    = ui.add_check_box("at targets only in air", "at_targets_only_in_air", false)
    
    local slowwalk_breaker          = ui.add_key_bind("slowwalk breaker", "slowwalk_breaker", 0,1)
    local AA_iso                    = ui.add_check_box("m1tzw AA", "AA_iso", false)
    local fast_flip                    = ui.add_check_box("fast swicher", "fast_flip", false)
    local fire_key                  = ui.add_key_bind("fire key[!require]", "fire_key", 0,1)
    local use_key                    = ui.add_key_bind("use key[!require]", "use_key", 0,1)
    local switch_tick               = ui.add_slider_int("!switch tick", "switch_tick", 1, 16, 1)
    local AA_select                 = ui.add_combo_box("aa select", "AA_select", {"hide","standing", "moving", "slowwalk", "air", "duck","air+duck"}, 0)
    table_aa = {antihit_antiaim_left,antihit_antiaim_backwards,antihit_antiaim_right,legit_aa,at_targets_only_in_air,slowwalk_breaker,AA_iso,fast_flip,fire_key,use_key,switch_tick,AA_select}
    --goto line 293
    local left_yaw_add_sta          = ui.add_slider_int("left yaw add", "left_yaw_add_sta", -180, 180, 0)
    local right_yaw_add_sta         = ui.add_slider_int("right yaw add", "right_yaw_add_sta", -180, 180, 0)
    local yaw_modifier_sta          = ui.add_slider_int("yaw modifier", "yaw_modifier_sta", -180, 180, 0)
    local left_min_sta              = ui.add_slider_int("left min", "left_min_sta", 0, 60, 60)
    local left_max_sta              = ui.add_slider_int("left max", "left_max_sta", 0, 60, 60)
    local right_min_sta             = ui.add_slider_int("right min", "right_min_sta", 0, 60, 60)
    local right_max_sta             = ui.add_slider_int("right max", "right_max_sta", 0, 60, 60)
    table_sta = {left_yaw_add_sta,right_yaw_add_sta,yaw_modifier_sta,left_min_sta,left_max_sta,right_min_sta,right_max_sta}
    local left_yaw_add_mov          = ui.add_slider_int("left yaw add", "left_yaw_add_mov", -180, 180, 0)
    local right_yaw_add_mov         = ui.add_slider_int("right yaw add", "right_yaw_add_mov", -180, 180, 0)
    local yaw_modifier_mov          = ui.add_slider_int("yaw modifier", "yaw_modifier_mov", -180, 180, 0)
    local left_min_mov              = ui.add_slider_int("left min", "left_min_mov", 0, 60, 60)
    local left_max_mov              = ui.add_slider_int("left max", "left_max_mov", 0, 60, 60)
    local right_min_mov             = ui.add_slider_int("right min", "right_min_mov", 0, 60, 60)
    local right_max_mov             = ui.add_slider_int("right max", "right_max_mov", 0, 60, 60)
    table_mov = {left_yaw_add_mov,right_yaw_add_mov,yaw_modifier_mov,left_min_mov,left_max_mov,right_min_mov,right_max_mov}
    local left_yaw_add_slo          = ui.add_slider_int("left yaw add", "left_yaw_add_slo", -180, 180, 0)
    local right_yaw_add_slo         = ui.add_slider_int("right yaw add", "right_yaw_add_slo", -180, 180, 0)
    local yaw_modifier_slo          = ui.add_slider_int("yaw modifier", "yaw_modifier_slo", -180, 180, 0)
    local left_min_slo              = ui.add_slider_int("left min", "left_min_slo", 0, 60, 60)
    local left_max_slo              = ui.add_slider_int("left max", "left_max_slo", 0, 60, 60)
    local right_min_slo             = ui.add_slider_int("right min", "right_min_slo", 0, 60, 60)
    local right_max_slo             = ui.add_slider_int("right max", "right_max_slo", 0, 60, 60)
    table_slo = {left_yaw_add_slo,right_yaw_add_slo,yaw_modifier_slo,left_min_slo,left_max_slo,right_min_slo,right_max_slo}
    local left_yaw_add_air          = ui.add_slider_int("left yaw add", "left_yaw_add_air", -180, 180, 0)
    local right_yaw_add_air         = ui.add_slider_int("right yaw add", "right_yaw_add_air", -180, 180, 0)
    local yaw_modifier_air          = ui.add_slider_int("yaw modifier", "yaw_modifier_air", -180, 180, 0)
    local left_min_air              = ui.add_slider_int("left min", "left_min_air", 0, 60, 60)
    local left_max_air              = ui.add_slider_int("left max", "left_max_air", 0, 60, 60)
    local right_min_air             = ui.add_slider_int("right min", "right_min_air", 0, 60, 60)
    local right_max_air             = ui.add_slider_int("right max", "right_max_air", 0, 60, 60)
    table_air = {left_yaw_add_air,right_yaw_add_air,yaw_modifier_air,left_min_air,left_max_air,right_min_air,right_max_air}
    local left_yaw_add_duc          = ui.add_slider_int("left yaw add", "left_yaw_add_duc", -180, 180, 0)
    local right_yaw_add_duc         = ui.add_slider_int("right yaw add", "right_yaw_add_duc", -180, 180, 0)
    local yaw_modifier_duc          = ui.add_slider_int("yaw modifier", "yaw_modifier_duc", -180, 180, 0)
    local left_min_duc              = ui.add_slider_int("left min", "left_min_duc", 0, 60, 60)
    local left_max_duc              = ui.add_slider_int("left max", "left_max_duc", 0, 60, 60)
    local right_min_duc             = ui.add_slider_int("right min", "right_min_duc", 0, 60, 60)
    local right_max_duc             = ui.add_slider_int("right max", "right_max_duc", 0, 60, 60)
    table_duc = {left_yaw_add_duc,right_yaw_add_duc,yaw_modifier_duc,left_min_duc,left_max_duc,right_min_duc,right_max_duc}
    local left_yaw_add_adu          = ui.add_slider_int("left yaw add", "left_yaw_add_adu", -180, 180, 0)
    local right_yaw_add_adu         = ui.add_slider_int("right yaw add", "right_yaw_add_adu", -180, 180, 0)
    local yaw_modifier_adu          = ui.add_slider_int("yaw modifier", "yaw_modifier_adu", -180, 180, 0)
    local left_min_adu              = ui.add_slider_int("left min", "left_min_adu", 0, 60, 60)
    local left_max_adu              = ui.add_slider_int("left max", "left_max_adu", 0, 60, 60)
    local right_min_adu             = ui.add_slider_int("right min", "right_min_adu", 0, 60, 60)
    local right_max_adu             = ui.add_slider_int("right max", "right_max_adu", 0, 60, 60)
    table_adu = {left_yaw_add_adu,right_yaw_add_adu,yaw_modifier_adu,left_min_adu,left_max_adu,right_min_adu,right_max_adu}
    local checking = 0
    function on_select_tab()
        
        if checking then
            checking = false
        else
            checking = true
        end
    end
    function to_show_sta()
        for i = 1, #table_sta do 
            table_sta[i]:set_visible(true)
        end 
    end
    function to_show_mov()
        for i = 1, #table_mov do 
            table_mov[i]:set_visible(true)
        end 
    end
    function to_show_slo()
        for i = 1, #table_slo do 
            table_slo[i]:set_visible(true)
        end 
    end
    function to_show_air()
        for i = 1, #table_air do 
            table_air[i]:set_visible(true)
        end 
    end
    function to_show_duc()
        for i = 1, #table_duc do 
            table_duc[i]:set_visible(true)
        end 
    end
    function to_show_adu()
        for i = 1, #table_adu do 
            table_adu[i]:set_visible(true)
        end 
    end
    function to_hide_sta()
        for i = 1, #table_sta do 
            table_sta[i]:set_visible(false)
        end 
    end
    function to_hide_mov()
        for i = 1, #table_mov do 
            table_mov[i]:set_visible(false)
        end 
    end
    function to_hide_slo()
        for i = 1, #table_slo do 
            table_slo[i]:set_visible(false)
        end 
    end
    function to_hide_air()
        for i = 1, #table_air do 
            table_air[i]:set_visible(false)
        end 
    end
    function to_hide_duc()
        for i = 1, #table_duc do 
            table_duc[i]:set_visible(false)
        end 
    end
    function to_hide_adu()
        for i = 1, #table_adu do 
            table_adu[i]:set_visible(false)
        end 
    end
    function to_show_aa()
        local showaa = AA_select:get_value()
        if showaa == 0 then
            if checking then
                to_hide_sta()
                to_hide_mov()
                to_hide_slo()
                to_hide_air()
                to_hide_duc()
                to_hide_adu()
            end
        elseif showaa == 1 then
            if checking then
                to_show_sta()
                to_hide_mov()
                to_hide_slo()
                to_hide_air()
                to_hide_duc()
                to_hide_adu()
            end
        elseif showaa == 2 then
            if checking then
                to_show_mov()
                to_hide_sta()
                to_hide_slo()
                to_hide_air()
                to_hide_duc()
                to_hide_adu()
            end
        elseif showaa == 3 then
            if checking then
                to_show_slo()
                to_hide_mov()
                to_hide_sta()
                to_hide_air()
                to_hide_duc()
                to_hide_adu()
            end
        elseif showaa == 4 then
            if checking then
                to_show_air()
                to_hide_mov()
                to_hide_slo()
                to_hide_sta()
                to_hide_duc()
                to_hide_adu()
            end
        elseif showaa == 5 then
            if checking then
                to_show_duc()
                to_hide_mov()
                to_hide_slo()
                to_hide_air()
                to_hide_sta()
                to_hide_adu()
            end
        elseif showaa == 6 then
            if checking then
                to_show_adu()
                to_hide_mov()
                to_hide_slo()
                to_hide_air()
                to_hide_duc()
                to_hide_sta()
            end
        end
    end

    
    --VISUALS
    --=========================================================================================================================
    local molo_color            = ui.add_color_edit("molotov radius", "molo_color", true, color_t.new(255, 255, 255, 255))
    local indicators            = ui.add_check_box("indicators", "indicators", false)
    local scope_transparent     = ui.add_check_box("scope trans.[require update]", "scope_transparent", false)
    local transparent           = ui.add_slider_int('transparent in scope', 'vis_transparent_in_scope', 1, 100, 75)
    local radar_hack            = ui.add_check_box("radar hack", "radar_hack", false)
    local flip_knife            = ui.add_check_box("flip knife hand", "flip_knife", false)
    local logs                  = ui.add_check_box("logs", "logs", false)
    local is_heart_enabled      = ui.add_check_box('heartmarkers', 'vis_heartmarkers_enable', false)
    local is_heart_colored      = ui.add_check_box('colored', 'vis_heartmarkers_colored', false)
    local thirdperson_distance  = ui.add_slider_int("thirdperson distance value", "thirdperson_distance", 0, 200, 150)
    local nwatermark            = ui.add_check_box("new watermark", "nwatermark", false)
    --local watermark             = ui.add_check_box("classic watermark", "watermark", false)
    --local watermark_x           = ui.add_slider_int("watermark_x", "watermark_x", 0, engine.get_screen_size().x, 2)
    --local watermark_y           = ui.add_slider_int("watermark_y", "watermark_y", 0, engine.get_screen_size().y, 0)
    local hotkey_binds          = ui.add_check_box("hotkey binds", "hotkey_binds", false)
    local hotkey_binds_x        = ui.add_slider_int("hotkey binds_x", "hotkey_binds_x", 0, engine.get_screen_size().x, 2)
    local hotkey_binds_y        = ui.add_slider_int("hotkey binds_y", "hotkey_binds_y", 0, engine.get_screen_size().y, 0)
    local dmged                 =  ui.add_slider_int("warn hp", "dmged_hp", 0,100, 0)
    local dmged_size            = ui.add_slider_int("hp warn size", "dmged_size", 1, 4, 2)
    local dmged_alpha           = ui.add_slider_int("hp warn alpha", "dmged_alpha", 0, 255, 255)
    local dmged_x               = ui.add_slider_int("hp warn_x", "damaged_warn_x", 0, engine.get_screen_size().x, 2)
    local dmged_y               = ui.add_slider_int("hp warn_y", "damaged_warn_y", 0, engine.get_screen_size().y, 2)
    table_visual = {molo_color,indicators,scope_transparent,transparent,radar_hack,flip_knife,logs,is_heart_enabled,is_heart_colored,thirdperson_distance,nwatermark,hotkey_binds,hotkey_binds_x,hotkey_binds_y,dmged,dmged_size,dmged_alpha,dmged_x,dmged_y}
    --MISC
    --=========================================================================================================================
    local ragdoll       = ui.add_check_box("ragdoll gravity", "ragdoll", false)
    local leg_fucker    = ui.add_check_box("leg breaker", "leg_fucker", false)
    local sta_leg       = ui.add_check_box("static leg", "sta_leg", false)
    local kill_say      =  ui.add_check_box("kill say", "kill_say", false)
    local knife_bot     = ui.add_check_box("knife bot", "knife_bot", false)
    local fps_boost     = ui.add_check_box("fps boost", "fps_boost", false)
    local panorama_blur = ui.add_check_box("panorama blur", "panorama_blur", false)
    local clean_blood   = ui.add_key_bind("clean blood", "clean_blood", 0, 1)
    table_misc = { ragdoll,leg_fucker,sta_leg,kill_say,knife_bot,fps_boost,panorama_blur,clean_blood}
    --SHOW TAB
    --=========================================================================================================================
    function to_show_tab0()
    
                github:set_visible(true)
                upd:set_visible(true)
    
    end
    function to_show_tab1()
                --shot_delay:set_visible(true)
                for i = 1, #table_rage do 
                    table_rage[i]:set_visible(true)
                end 
    end
    function to_show_tab2()
    
        for i = 1, #table_aa do 
            table_aa[i]:set_visible(true)
        end 
    
       
    end
    function to_show_tab3()
    
        for i = 1, #table_visual do 
            table_visual[i]:set_visible(true)
        end 
    end
    function to_show_tab4()
        for i = 1, #table_misc do 
            table_misc[i]:set_visible(true)
        end 
    end
    function to_hide_tab0()
    
                github:set_visible(false)
                upd:set_visible(false)
    end
    function to_hide_tab1()
                --shot_delay:set_visible(false)
                for i = 1, #table_rage do 
                    table_rage[i]:set_visible(false)
                end 
    
    
    end
    function to_hide_tab2()
    
        for i = 1, #table_aa do 
            table_aa[i]:set_visible(false)
        end 
        to_hide_sta()
        to_hide_mov()
        to_hide_slo()
        to_hide_air()
        to_hide_duc()
        to_hide_adu()
    end
    function to_hide_tab3()
    
                   
        for i = 1, #table_visual do 
            table_visual[i]:set_visible(false)
        end 
    
    end
    function to_hide_tab4()
    
        for i = 1, #table_misc do 
            table_misc[i]:set_visible(false)
        end 
    
    end

    function to_call_back()
        local showtab = tab_list:get_value()
        if showtab == 0 then
            if checking then
                    to_show_tab0()
                    to_hide_tab1()
                    to_hide_tab2()
                    to_hide_tab3()
                    to_hide_tab4()
                
            end
        elseif showtab == 1 then
            if checking then
                to_show_tab1()
                to_hide_tab0()
                to_hide_tab2()
                to_hide_tab3()
                to_hide_tab4()
            
            end
        elseif showtab == 2 then
            if checking then
                to_show_tab2()
                to_hide_tab0()
                to_hide_tab1()
                to_hide_tab3()
                to_hide_tab4()
            
            end
        elseif showtab == 3 then
            if checking then
                to_show_tab3()
                to_hide_tab0()
                to_hide_tab1()
                to_hide_tab2()
                to_hide_tab4()
            
            end
        elseif showtab == 4 then
            if checking then
                to_show_tab4()
                to_hide_tab0()
                to_hide_tab1()
                to_hide_tab2()
                to_hide_tab3()
            
            end
        end
    end
 
    --netvar and function
    --=========================================================================================================================
    
    local defpng                = renderer.setup_texture("C:/nixware/DEF.png")
    local dmgpng                = renderer.setup_texture("C:/nixware/DMG.png")

    screen = engine.get_screen_size()
    
    is_fake_duck = ui.get_key_bind("antihit_extra_fakeduck_bind")
    is_inverted = ui.get_key_bind("antihit_antiaim_flip_bind")
    is_exploit_type = ui.get_combo_box("rage_active_exploit")
    is_exploit_bind = ui.get_key_bind("rage_active_exploit_bind")

    is_slowwalk_checkbox = ui.get_check_box("antihit_extra_slowwalk")
    is_slowwalk = ui.get_key_bind("antihit_extra_slowwalk_bind")
    is_desync_length = ui.get_slider_int("antihit_antiaim_desync_length")
    local m_bPinPulled = se.get_netvar("DT_BaseCSGrenade", "m_bPinPulled")
    local m_fThrowTime = se.get_netvar("DT_BaseCSGrenade", "m_fThrowTime")
    local m_hActiveWeapon = se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon")
    local m_iHealth = se.get_netvar("DT_BasePlayer", "m_iHealth")
    local m_hGroundEntity = se.get_netvar("DT_BasePlayer", "m_hGroundEntity")
    local m_bSpotted = se.get_netvar("DT_BaseEntity", "m_bSpotted")
    
    local player_shots = {}
    for i = 0, 64 do player_shots[i] = 0.0 end
    client.register_callback("weapon_fire", function(event)
        player_shots[engine.get_player_for_user_id(event:get_int("userid", 0))] = globalvars.get_current_time()
    end)
    local players_dormant = {}
    for i = 0, 64 do players_dormant[i] = 0.0 end
    
    local entity_list_ptr = ffi.cast("void***", se.create_interface("client.dll", "VClientEntityList003"))
    local get_client_entity_fn = ffi.cast("GetClientEntity_4242425_t", entity_list_ptr[0][3])
    
    local offset_value = 0x9960
    local shared_onground
    
    local m_flPoseParameter = se.get_netvar("DT_BaseAnimating", "m_flPoseParameter")
    
    local m_bIsScoped = 0x9974 -- https://github.com/frk1/hazedumper/blob/master/csgo.hpp at line 33
    local m_vecOrigin = se.get_netvar("DT_BaseEntity", "m_vecOrigin")
    local m_flDuckSpeed = se.get_netvar("DT_BasePlayer", "m_flDuckSpeed");
    local m_flDuckAmount = se.get_netvar("DT_BasePlayer", "m_flDuckAmount");
    local m_vecVelocity = se.get_netvar("DT_BasePlayer", "m_vecVelocity[0]");
    local m_bIsValveDS = se.get_netvar("DT_CSGameRulesProxy", "m_bIsValveDS")
    local m_iTeamNum = se.get_netvar("DT_BaseEntity", "m_iTeamNum")
    local m_fFlags = se.get_netvar("DT_BasePlayer", "m_fFlags")
    local m_flDuckAmount = se.get_netvar("DT_BasePlayer", "m_flDuckAmount")
    local m_vecViewOffset = se.get_netvar("DT_BasePlayer", "m_vecViewOffset[0]")
    local m_iTeamNum = se.get_netvar("DT_BaseEntity", "m_iTeamNum")
    
    local m_bFireIsBurning = se.get_netvar("DT_Inferno", "m_bFireIsBurning")
    local m_fireCount = se.get_netvar("DT_Inferno", "m_fireCount")
    local m_fireXDelta = se.get_netvar("DT_Inferno", "m_fireXDelta")
    local m_fireYDelta = se.get_netvar("DT_Inferno", "m_fireYDelta")
    local m_fireZDelta = se.get_netvar("DT_Inferno", "m_fireZDelta")
    
    local sv_maxspeed = se.get_convar("sv_maxspeed")
    
    local flame_radius = 60.0
    local flame_points = 32
    
    function draw_flame(pos)
        local points = { }
        for i = 1, flame_points do
            local item = vec3_t.new(
                pos.x + flame_radius * math.cos(i * (360.0 / flame_points) * 0.017453),
                pos.y + flame_radius * math.sin(i * (360.0 / flame_points) * 0.017453),
                pos.z + 0.0
            )
            table.insert(points, se.world_to_screen(item))
        end
        renderer.filled_polygon(points, molo_color:get_value())
    end
    
    function hasbit(a, b)
        return a % (b + b) >= b
    end
    
    local antihit_antiaim_yaw = 0
    
    local cnt = 0
    local choke = 0
    local send = 0
    local ebind = ui.get_key_bind("rage_active_exploit_bind")
    local ebox = ui.get_combo_box("rage_active_exploit")
    local loop = false
    local break_lby = false
    local force_choke = false
    local force_send = true
    local lby_update = 0.0
    local curtime = 0.0
    local lby_delta = 0
    local loop1 = false
    local desync_delta = 0
    local side = 1
    local lby_time = 0.0
    local lby_delta1 = 0
    local lby_update1 = 0.0
    local lby_loop = 0
    local pitch1 = 0
    local yaw1 = 0
    local des1 = 0
    local lby1 = 0
    local lby_sw1 = 0
    
    --local visuals_models_local_color = ui.get_color_edit('visuals_models_local_color_')
    local visuals_models_local_material_color = ui.get_color_edit('visuals_models_local_material_color')
    
    local cache = {
        --chams = visuals_models_local_color:get_value(),
        material = visuals_models_local_material_color:get_value()
    }
    
    
    
    function clamp(val, min, max)
        if val > max then return max end
        if val < min then return min end
        return val
    end
    
    --weapon_data_call = ffi.cast("int*(__thiscall*)(void*)", client.find_pattern("client.dll", "55 8B EC 81 EC ? ? ? ? 53 8B D9 56 57 8D 8B ? ? ? ? 85 C9 75 04"));
    local weapon_data_call = ffi.cast("int*(__thiscall*)(void*)", client.find_pattern("client.dll", "55 8B EC 81 EC 0C 01 ? ? 53 8B D9 56 57 8D 8B"));
    local velocity = nil
    local m_vecVelocity = {
        [0] = se.get_netvar("DT_BasePlayer", "m_vecVelocity[0]"),
        [1] = se.get_netvar("DT_BasePlayer", "m_vecVelocity[1]")
    }
    
    FLT_MAX = 2147483647.0
    
    function get_player(  )
    
        local closet_index, most_close = -1, FLT_MAX
    
        local entities = entitylist.get_players(0)
    
        for index = 1,#entities do
            local entity = entities[index]
    
            if not entity:is_alive() or entity:is_dormant() then
                goto continue
            end
    
            local origin_var = entitylist.get_local_player():get_prop_vector( se.get_netvar( "DT_BaseEntity", "m_vecOrigin" ) )
            local player_origin = entity:get_prop_vector( se.get_netvar( "DT_BaseEntity", "m_vecOrigin" ) )
    
            local difference_between_players = vec3_t.new(origin_var.x - player_origin.x, origin_var.y - player_origin.y, origin_var.z - player_origin.z):length()
    
            if difference_between_players < most_close then
                most_close = difference_between_players; closet_index = entity:get_index();
            end
    
            ::continue::
        end
    
        return closet_index
    
    end
    
    function get_attack( enemy )
    
        local tickbase     = entitylist.get_local_player():get_prop_int( se.get_netvar( "DT_BasePlayer", "m_nTickBase" ) )
        local weapon   	   = entitylist.get_entity_from_handle( entitylist.get_local_player():get_prop_int( se.get_netvar( "DT_BaseCombatCharacter", "m_hActiveWeapon" ) ) )
        local enemy_health = enemy:get_prop_int( se.get_netvar( "DT_BasePlayer", "m_iHealth" ) )
        local enemy_armor  = enemy:get_prop_int( se.get_netvar( "DT_CSPlayer", "m_ArmorValue" ) )
    
        if enemy_armor > 54 then
    
            if get_next_left_attack_health( enemy_armor ) > enemy_health then
                return 1
            else
                if (enemy_health - get_next_left_attack_health( enemy_armor )) > 22 then
                    return 1
                else
                    return 2048
                end
            end
    
        else
    
            if get_next_left_attack_health( enemy_armor ) > enemy_health then
                return 1
            else
                if (enemy_health - get_next_left_attack_health( enemy_armor )) > 32 then
                    return 1
                else
                    return 2048
                end
            end
    
        end 
    
    end
    
    function get_dist( enemy )
    
        return get_attack( enemy ) == 1 and 77 or 63
    
    end
    
    function get_next_left_attack_health( armor )
    
        local tickbase = entitylist.get_local_player():get_prop_int( se.get_netvar( "DT_BasePlayer", "m_nTickBase" ) )
        local weapon   = entitylist.get_entity_from_handle( entitylist.get_local_player():get_prop_int( se.get_netvar( "DT_BaseCombatCharacter", "m_hActiveWeapon" ) ) )
    
        if (globalvars.get_interval_per_tick() * tickbase) > ( weapon:get_prop_float( se.get_netvar("DT_BaseCombatWeapon", "m_flNextPrimaryAttack") ) + 0.4 ) then
            return armor > 54 and 32 or 38
        end
    
        return armor > 54 and 20 or 24
    
    end
    
    function normalize_angles( angles_var, delta_var )
        if delta_var.x >= 0 then
            angles_var.yaw = angles_var.yaw + 180
        end
    
        if angles_var.yaw <= -180 then
            angles_var.yaw = angles_var.yaw + 360
        end
    
        if angles_var.yaw >= 180 then
            angles_var.yaw = angles_var.yaw - 360
        end
    end
    
    function calculate_angles( start, to )
        
        local new_angles_var = angle_t.new(0,0,0)
        
        local delta_between_positions = vec3_t.new(start.x - to.x, start.y - to.y, start.z - to.z)
        local calculate_position = math.sqrt(delta_between_positions.x*delta_between_positions.x + delta_between_positions.y*delta_between_positions.y)
    
        new_angles_var.pitch = math.atan(delta_between_positions.z / calculate_position) * 180 / math.pi
        new_angles_var.yaw = math.atan(delta_between_positions.y / delta_between_positions.x) * 180 / math.pi
        new_angles_var.roll = 0
    
        normalize_angles( new_angles_var, delta_between_positions )
    
        return new_angles_var
    
    end
    
    function has_bit(x, p) return x % (p + p) >= p end
    function set_bit(x, p) return has_bit(x, p) and x or x + p end
    
    function GetWeaponData( weapon ) return ffi.cast("struct WeaponInfo_t*", weapon_data_call(ffi.cast("void*", weapon:get_address()))) end
    
    function rectangle(x, y, w, h, color)
        renderer.rect_filled(vec2_t.new(x, y), vec2_t.new(x + w, y + h), color_t.new(color[1], color[2], color[3], color[4]))
    end
    
    hitboxes = {
        "head",
        "neck",
        "pelvis",
        "belly",
        "thorax",
        "lower chest",
        "upper chest",
        "right thigh",
        "left thigh",
        "right calf",
        "left calf",
        "right foot",
        "left foot",
        "right hand",
        "left hand",
        "right upper arm",
        "right forearm",
        "left upper arm",
        "left forearm",
        "hitbox max"
    }
    
    function get_hitbox(hitbox)
        return hitboxes[hitbox]
    end
    
    console_color = ffi.new("struct c_color")
    console_color.clr[3] = 255
    updated = false
    messages = {}
    messages.text = ""
    messages.bg_position = 0
    messages.once = true
    --=========================================================================================================================
    function on_github()
        if github:get_value() == true then
            os.execute ("start https://github.com/M3351AN/Isonami_4_Nixware")
            github:set_value(false)
        end
    end
    client.register_callback('paint', on_github)
    function on_upd()
        if upd:get_value() == true then
            os.execute ("start https://github.com/M3351AN/Isonami_4_Nixware/releases")
            upd:set_value(false)
        end
    end
    client.register_callback('paint', on_upd)

    
    --RAGE
    --=========================================================================================================================
    local function essentials(cmd)
        local entity = entitylist.get_entity_by_index(i)
        local velocity = entity:get_prop_vector(m_vecVelocity)
                local speed = velocity:length()
                if speed < 180.0 then --standing
                    if lua_re_baim_conditions:get_value(0) then
                        ragebot.override_hitscan(i, 0, lua_re_baim_hitboxes:get_value(0))
                        ragebot.override_hitscan(i, 1, lua_re_baim_hitboxes:get_value(1))
                        ragebot.override_hitscan(i, 2, lua_re_baim_hitboxes:get_value(2))
                        ragebot.override_hitscan(i, 3, lua_re_baim_hitboxes:get_value(3))
                        ragebot.override_hitscan(i, 4, lua_re_baim_hitboxes:get_value(4))
                        ragebot.override_hitscan(i, 5, lua_re_baim_hitboxes:get_value(5))
                    end
                elseif speed < 180.0 then --slowwalking / shifting
                    if lua_re_baim_conditions:get_value(1) then
                        ragebot.override_hitscan(i, 0, lua_re_baim_hitboxes:get_value(0))
                        ragebot.override_hitscan(i, 1, lua_re_baim_hitboxes:get_value(1))
                        ragebot.override_hitscan(i, 2, lua_re_baim_hitboxes:get_value(2))
                        ragebot.override_hitscan(i, 3, lua_re_baim_hitboxes:get_value(3))
                        ragebot.override_hitscan(i, 4, lua_re_baim_hitboxes:get_value(4))
                        ragebot.override_hitscan(i, 5, lua_re_baim_hitboxes:get_value(5))
                    end
                end
        local health = entity:get_prop_int(m_iHealth)
        if damage > health then -- lethal
            if lua_re_baim_conditions:get_value(2) then
                ragebot.override_hitscan(i, 0, lua_re_baim_hitboxes:get_value(0))
                ragebot.override_hitscan(i, 1, lua_re_baim_hitboxes:get_value(1))
                ragebot.override_hitscan(i, 2, lua_re_baim_hitboxes:get_value(2))
                ragebot.override_hitscan(i, 3, lua_re_baim_hitboxes:get_value(3))
                ragebot.override_hitscan(i, 4, lua_re_baim_hitboxes:get_value(4))
                ragebot.override_hitscan(i, 5, lua_re_baim_hitboxes:get_value(5))
            end
        end
        if player_shots[i] + onshot_time:get_value() > globalvars.get_current_time() then --on shot
            ragebot.override_max_misses(i, 0)
            ragebot.override_safe_point(i, 0)
            ragebot.override_hitscan(i, 0, onshot_hitboxes:get_value(0))
            ragebot.override_hitscan(i, 1, onshot_hitboxes:get_value(1))
            ragebot.override_hitscan(i, 2, onshot_hitboxes:get_value(2))
            ragebot.override_hitscan(i, 3, onshot_hitboxes:get_value(3))
            ragebot.override_hitscan(i, 4, onshot_hitboxes:get_value(4))
            ragebot.override_hitscan(i, 5, onshot_hitboxes:get_value(5))
    
        end
    end
    local check_time = false
    local fire_time = false
    function for_on_shot_do(e)
        fire_time = true
        if fl_0_onshot:get_value() == true then
            is_exploit_bind:set_type(0)
            is_exploit:set_value(2)
        end
    end

    client.register_callback("shot_fired",for_on_shot_do)
    function on_shot_do()
        if math.random(0,8) == 1 then
            check_time=true
        end
        if fire_time and check_time then --on shot
            if fl_0_onshot:get_value() == true then
                is_exploit_bind:set_type(1)
                is_exploit:set_value(0)
            end
            fire_time = false
            check_time = false
        
        end
    end
    --local shotdelay = 0
    local ragebott = ui.get_key_bind("rage_enable_bind")
    --function on_shot_delay()
        --if shot_delay:get_value() > 0 then
        --local curTime = globalvars.get_current_time()
        --if curTime > shotdelay then
            --ragebott:set_type(0)
            --shotdelay = curTime + shot_delay:get_value() /1000
        --else
            --ragebott:set_type(1)
        --end
    --else
    --ragebott:set_type(0)   
    --end
    --end
   -- client.register_callback("create_move", on_shot_delay)
    
    function on_knife_bot(cmd)--advanced knifebot credit by Suzuki233
        if knife_bot:get_value() == true then 
            
            local current_player = entitylist.get_entity_by_index( get_player(  ) )

            local local_origin = entitylist.get_local_player():get_prop_vector(se.get_netvar("DT_BaseEntity", "m_vecOrigin"))
            local player_origin = current_player:get_prop_vector( se.get_netvar( "DT_BaseEntity", "m_vecOrigin" ) )

            local current_dist = vec3_t.new( local_origin.x - player_origin.x, local_origin.y - player_origin.y, local_origin.z - player_origin.z ):length()
            local current_angles = calculate_angles(local_origin, player_origin)

            if math.floor(current_dist) <= get_dist( current_player ) then
                cmd.viewangles = current_angles
                cmd.buttons = set_bit(cmd.buttons, get_attack( current_player ))
            end

        end
    end 
    client.register_callback( "create_move", on_knife_bot) 
    function on_jump_scout(cmd)
    
        local player = entitylist.get_entity_by_index(engine.get_local_player())
        
        if player then
            velocity = math.sqrt(player:get_prop_float(m_vecVelocity[0]) ^ 2 + player:get_prop_float(m_vecVelocity[1]) ^ 2)
        end
    
        if jump_scout:get_value() == true then
    
        if velocity ~= nil then
            if velocity > 15 then
                ui.get_check_box("misc_autostrafer"):set_value(true)
            else
                ui.get_check_box("misc_autostrafer"):set_value(false)
            end
        end
        end
    end
    
    client.register_callback("paint", on_jump_scout)

    
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
    
    function on_move(cmd) 
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
            local Scout_HC = ui.get_slider_int("rage_scout_hitchance"):set_value(boost_max:get_value())
        end
    end
    
    
    function low_speed(cmd)
    
    
    
        local player = entitylist.get_entity_by_index(engine.get_local_player())
        
        if player then
            velocity = math.sqrt(player:get_prop_float(m_vecVelocity[0]) ^ 2 + player:get_prop_float(m_vecVelocity[1]) ^ 2)
        end
    
        if velocity ~= nil then
            if velocity > 15 then
        min = boost_high:get_value()
            else
        min = boost_low:get_value()
            end
        end
    end
    
    client.register_callback("create_move", low_speed)
    client.register_callback("create_move", on_move)
    client.register_callback("create_move", on_scout_boost)
    local shott = 0

    
    --=========================================================================================================================
    function on_ping_spike(cmd)
    
        
        if ping_spike:is_active() then
             
            ui.get_slider_int("misc_ping_spike_amount"):set_value(ping_spike_a:get_value())
        else
        ui.get_slider_int("misc_ping_spike_amount"):set_value(ping_spike_b:get_value())	
        end
    end
    client.register_callback("create_move", on_ping_spike)
    
    
    --RESOLVER
    --=========================================================================================================================
    --n07h1ng h3r3
    --buuuuuuuuuut
    function on_aim_angle_fix()
        if aim_angle_fix:is_active() == true then
            local function get_eyes_pos()
                local local_player = entitylist.get_local_player()
                local origin = local_player:get_prop_vector(m_vecOrigin)
                local view_offset = local_player:get_prop_vector(m_vecViewOffset)
                return vec3_t.new(origin.x + view_offset.x, origin.y + view_offset.y, origin.z + view_offset.z)
            end
            
            local function get_aim_angle(entity)
                local pos = entity:get_player_hitbox_pos(10)
                local eyes = get_eyes_pos()
                local vec = vec3_t.new(pos.x + eyes.x/8, pos.y/2 + eyes.y*4, pos.z + eyes.z/8)
                local hyp = math.sqrt(vec.x*vec.x + vec.z*vec.z)
                
                local pitch = -math.asin(vec.z / hyp) * 50.2143483343
                if pitch > 90.0 then pitch = 90.0 end
                if pitch < -90.0 then pitch = -90.0 end
                
                local yaw = math.atan2(vec.y, vec.x) * 50.2143483343
                while yaw < -180.0 do angle = angle + 360.0 end
                while yaw > 180.0 do angle = angle - 360.0 end
                
                return angle_t.new(pitch, yaw, 0)
            end
            --By Suzuki233 v1.2
            --开抢抬头修复(开抢不空)
        end
    end
    client.register_callback("create_move", on_aim_angle_fix)
    --=========================================================================================================================
    
    
    
   
    
    
    
    --ANTI-AIM
    --=========================================================================================================================
    local switcher = false
    function AA_switch()
        local curtime = globalvars.get_current_time()
        local ramdom_num = math.random(2)
        if fast_flip:get_value() == true then
            if ramdom_num == 1 then
            ui.get_key_bind("antihit_antiaim_flip_bind"):set_type(1)
            else
            ui.get_key_bind("antihit_antiaim_flip_bind"):set_type(0)
            end
        end
    end
    local max = false
    function AA_execute(cmd)
        local player = entitylist.get_entity_by_index(engine.get_local_player())
        local localPlayer = entitylist.get_local_player()
        local m_bDucked = localPlayer:get_prop_int(se.get_netvar("DT_BasePlayer", "m_bDucked"))
        local m_hGroundEntity = localPlayer:get_prop_int(se.get_netvar("DT_BasePlayer", "m_hGroundEntity"))
        if player then

            fet_velocity = math.sqrt(player:get_prop_float(m_vecVelocity[0]) ^ 2 + player:get_prop_float(m_vecVelocity[1]) ^ 2)
        end
    
        if AA_iso:get_value() == true and use_key:is_active() == false and fire_key:is_active() == false then
            if ui.get_key_bind("antihit_antiaim_flip_bind"):is_active() == true then--right
                if fet_velocity <= 5 and m_bDucked ~= 1 then--stand
                    cmd.viewangles.yaw = engine.get_view_angles().yaw
                    if max == true then
                        cmd.viewangles.yaw = cmd.viewangles.yaw + right_yaw_add_sta:get_value() - (yaw_modifier_sta:get_value() / 2)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(right_max_sta:get_value())
                        max = false
                    else
                        cmd.viewangles.yaw = cmd.viewangles.yaw + right_yaw_add_sta:get_value() - (yaw_modifier_sta:get_value() / 2 * -1)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(right_min_sta:get_value())
                        max = true
                    end      
                elseif fet_velocity > 5 and antihit_extra_slowwalk_bind:is_active() == false then--moving
                    cmd.viewangles.yaw = engine.get_view_angles().yaw
                    if max == true then
                        cmd.viewangles.yaw = cmd.viewangles.yaw + right_yaw_add_mov:get_value() - (yaw_modifier_mov:get_value() / 2)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(right_max_mov:get_value())
                        max = false
                    else
                        cmd.viewangles.yaw = cmd.viewangles.yaw + right_yaw_add_mov:get_value() - (yaw_modifier_mov:get_value() / 2 * -1)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(right_min_mov:get_value())
                        max = true
                    end      
                elseif antihit_extra_slowwalk_bind:is_active() then--slowwalk
                    cmd.viewangles.yaw = engine.get_view_angles().yaw
                    if max == true then
                        cmd.viewangles.yaw = cmd.viewangles.yaw + right_yaw_add_slo:get_value() - (yaw_modifier_slo:get_value() / 2)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(right_max_slo:get_value())
                        max = false
                    else
                        cmd.viewangles.yaw = cmd.viewangles.yaw + right_yaw_add_slo:get_value() - (yaw_modifier_slo:get_value() / 2 * -1)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(right_min_slo:get_value())
                        max = true
                    end       
                elseif m_hGroundEntity ~= -1 and m_bDucked == 1 then--duck
                    cmd.viewangles.yaw = engine.get_view_angles().yaw
                    if max == true then
                        cmd.viewangles.yaw = cmd.viewangles.yaw + right_yaw_add_duc:get_value() - (yaw_modifier_duc:get_value() / 2)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(right_max_duc:get_value())
                        max = false
                    else
                        cmd.viewangles.yaw = cmd.viewangles.yaw + right_yaw_add_duc:get_value() - (yaw_modifier_duc:get_value() / 2 * -1)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(right_min_duc:get_value())
                        max = true
                    end         
                elseif m_hGroundEntity == -1 and m_bDucked ~= 1 then--air
                    cmd.viewangles.yaw = engine.get_view_angles().yaw
                    if max == true then
                        cmd.viewangles.yaw = cmd.viewangles.yaw + right_yaw_add_air:get_value() - (yaw_modifier_air:get_value() / 2)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(right_max_air:get_value())
                        max = false
                    else
                        cmd.viewangles.yaw = cmd.viewangles.yaw + right_yaw_add_air:get_value() - (yaw_modifier_air:get_value() / 2 * -1)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(right_min_air:get_value())
                        max = true
                    end      
                elseif m_hGroundEntity == -1 and m_bDucked == 1 then--air+duck
                    cmd.viewangles.yaw = engine.get_view_angles().yaw
                    if max == true then
                        cmd.viewangles.yaw = cmd.viewangles.yaw + right_yaw_add_adu:get_value() - (yaw_modifier_adu:get_value() / 2)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(right_max_adu:get_value())
                        max = false
                    else
                        cmd.viewangles.yaw = cmd.viewangles.yaw + right_yaw_add_adu:get_value() - (yaw_modifier_adu:get_value() / 2 * -1)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(right_min_adu:get_value())
                        max = true
                    end      
                end
            else--left
                if fet_velocity <= 5 and m_bDucked ~= 1 then--stand
                    cmd.viewangles.yaw = engine.get_view_angles().yaw
                    if max == true then
                        cmd.viewangles.yaw = cmd.viewangles.yaw + left_yaw_add_sta:get_value() - (yaw_modifier_sta:get_value() / 2)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(left_max_sta:get_value())
                        max = false
                    else
                        cmd.viewangles.yaw = cmd.viewangles.yaw + left_yaw_add_sta:get_value() - (yaw_modifier_sta:get_value() / 2 * -1)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(left_min_sta:get_value())
                        max = true
                    end      
                elseif fet_velocity > 5 and antihit_extra_slowwalk_bind:is_active() == false then--moving
                    cmd.viewangles.yaw = engine.get_view_angles().yaw
                    if max == true then
                        cmd.viewangles.yaw = cmd.viewangles.yaw + left_yaw_add_mov:get_value() - (yaw_modifier_mov:get_value() / 2)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(left_max_mov:get_value())
                        max = false
                    else
                        cmd.viewangles.yaw = cmd.viewangles.yaw + left_yaw_add_mov:get_value() - (yaw_modifier_mov:get_value() / 2 * -1)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(left_min_mov:get_value())
                        max = true
                    end      
                elseif antihit_extra_slowwalk_bind:is_active() then--slowwalk
                    cmd.viewangles.yaw = engine.get_view_angles().yaw
                    if max == true then
                        cmd.viewangles.yaw = cmd.viewangles.yaw + left_yaw_add_slo:get_value() - (yaw_modifier_slo:get_value() / 2)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(left_max_slo:get_value())
                        max = false
                    else
                        cmd.viewangles.yaw = cmd.viewangles.yaw + left_yaw_add_slo:get_value() - (yaw_modifier_slo:get_value() / 2 * -1)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(left_min_slo:get_value())
                        max = true
                    end       
                elseif m_hGroundEntity ~= -1 and m_bDucked == 1 then--duck
                    cmd.viewangles.yaw = engine.get_view_angles().yaw
                    if max == true then
                        cmd.viewangles.yaw = cmd.viewangles.yaw + left_yaw_add_duc:get_value() - (yaw_modifier_duc:get_value() / 2)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(left_max_duc:get_value())
                        max = false
                    else
                        cmd.viewangles.yaw = cmd.viewangles.yaw + left_yaw_add_duc:get_value() - (yaw_modifier_duc:get_value() / 2 * -1)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(left_min_duc:get_value())
                        max = true
                    end         
                elseif m_hGroundEntity == -1 and m_bDucked ~= 1 then--air
                    cmd.viewangles.yaw = engine.get_view_angles().yaw
                    if max == true then
                        cmd.viewangles.yaw = cmd.viewangles.yaw + left_yaw_add_air:get_value() - (yaw_modifier_air:get_value() / 2)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(left_max_air:get_value())
                        max = false
                    else
                        cmd.viewangles.yaw = cmd.viewangles.yaw + left_yaw_add_air:get_value() - (yaw_modifier_air:get_value() / 2 * -1)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(left_min_air:get_value())
                        max = true
                    end      
                elseif m_hGroundEntity == -1 and m_bDucked == 1 then--air+duck
                    cmd.viewangles.yaw = engine.get_view_angles().yaw
                    if max == true then
                        cmd.viewangles.yaw = cmd.viewangles.yaw + left_yaw_add_adu:get_value() - (yaw_modifier_adu:get_value() / 2)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(left_max_adu:get_value())
                        max = false
                    else
                        cmd.viewangles.yaw = cmd.viewangles.yaw + left_yaw_add_adu:get_value() - (yaw_modifier_adu:get_value() / 2 * -1)
                        ui.get_slider_int("antihit_antiaim_desync_length"):set_value(left_min_adu:get_value())
                        max = true
                    end      
                end
            end
        end
    end
    --=========================================================================================================================
    function weapon_data( weapon )
        return ffi.cast("struct Weapon_Info_t*", weapon_data_call(ffi.cast("void*", weapon:get_address())));
    end
    
    function is_throwing(  )
        local active_weapon_throw_time = entitylist.get_entity_from_handle(entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon"))):get_prop_float(se.get_netvar("DT_BaseCSGrenade", "m_fThrowTime"))
    
        if active_weapon_throw_time > 0.1 then 
            return true
        end 
        
        return false
    end
    
    function is_nade(  )
    
        local weapon = entitylist.get_entity_from_handle(entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon")))
    
        if weapon_data(weapon).type == 0 then
            return true
        end
    
        return false
    
    end
    
    function is_knife(  )
        
        local weapon = entitylist.get_entity_from_handle(entitylist.get_local_player():get_prop_int(se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon")))
    
        if weapon_data(weapon).type == 1 then
            return true
        end
    
        return false
    
    end
    
    function hasbit(x, p) return x % (p + p) >= p end
    
    function checks(pCmd)
    
        local netMoveType = se.get_netvar("DT_BaseEntity", "m_nRenderMode") + 1
        local move_type = entitylist.get_local_player():get_prop_int(netMoveType)
    
        if move_type == 8 or move_type == 9 then
            return true
        end
    
        if hasbit(pCmd.buttons, bit32.lshift(1, 0)) then
            return true
        end
    
        if hasbit(pCmd.buttons, bit32.lshift(1, 5)) and not e_legit_checkbox:get_value() then
            return true
        end
    
        if is_nade( ) and is_throwing( ) and not is_knife( ) then
            return true
        end
    end
    
    function sidemoves(pCmd)
        if math.abs(pCmd.sidemove) < 4 then
            if pCmd.command_number % 2 == 1 then
                pCmd.sidemove = client.is_key_pressed(17) and 3.01 or 1.01 + pCmd.sidemove
            else
                pCmd.sidemove = client.is_key_pressed(17) and -3.01 or -1.01 + pCmd.sidemove 
            end
        end
    end    
    
    
    function do_lby(pCmd)
        if checks(pCmd) then return end
    
        side = inverter_bind:is_active() and 1 or -1
    
        curtime = globalvars.get_current_time()
    
        if e_legit_checkbox:get_value() and hasbit(pCmd.buttons, bit32.lshift(1, 5)) then
            if lby_combo:get_value() == 1 then
                lby1 = 180
            elseif lby_combo:get_value() == 2 then    
                lby1 = 140
            end    
            lby_sw1 = 80
        else
            lby1 = 120
            lby_sw1 = 20
        end
    
        if lby_combo:get_value() == 1 then
            lby_delta1 = lby1
        elseif lby_combo:get_value() == 2 then
            if curtime > lby_update1 then
                lby_update1 = curtime + 1.1
    
                if lby_loop then
                    lby_delta1 = lby1
                    lby_loop = false
                else
                    lby_loop = true
                    lby_delta1 = -lby_sw1
                end
            end
        end               
                
        lby_delta = -side * lby_delta1
    
        if ebind:is_active() and ebox:get_value() > 0 then
            lby_time = 1.1
        else
            lby_time = 0.22
        end
                
        if curtime > lby_update and lby_combo:get_value() > 0 then
            lby_update = curtime + lby_time
            break_lby = true
            pCmd.send_packet = false
            force_choke = true
            pCmd.viewangles.yaw = pCmd.viewangles.yaw + lby_delta
            sidemoves(pCmd)
            return
        else
            if lby_combo:get_value() == 0 then
                sidemoves(pCmd)
            end    
            break_lby = false
        end
    end
    
    
    --=========================================================================================================================
    function get_antihit_antiaim_yaw()
        if client.is_key_clicked(antihit_antiaim_left:get_key()) then
            if antihit_antiaim_yaw == 1 then
            return 0
        end
            antihit_antiaim_yaw = 1
        end
        if client.is_key_clicked(antihit_antiaim_backwards:get_key()) then
            if antihit_antiaim_yaw == 2 then
            return 0
        end
            antihit_antiaim_yaw = 2
        end
        if client.is_key_clicked(antihit_antiaim_right:get_key()) then
            if antihit_antiaim_yaw == 3 then
            return 0
        end
            antihit_antiaim_yaw = 3
        end
        return antihit_antiaim_yaw
    end
    
    function for_manual_on_paint()
        antihit_antiaim_yaw = get_antihit_antiaim_yaw()
    end
    
    function for_manual_on_create_move(cmd)
        if antihit_antiaim_yaw == 0 then
            ui.get_combo_box("antihit_antiaim_yaw"):set_value(1)
        end
        if antihit_antiaim_yaw == 1 then
            ui.get_combo_box("antihit_antiaim_yaw"):set_value(2)
        end
        if antihit_antiaim_yaw == 2 then
            ui.get_combo_box("antihit_antiaim_yaw"):set_value(1)
        end
        if antihit_antiaim_yaw == 3 then
            ui.get_combo_box("antihit_antiaim_yaw"):set_value(3)
        end
    end
    
    client.register_callback("paint", for_manual_on_paint)
    client.register_callback("create_move", for_manual_on_create_move)
    
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
    function for_break(cmd) 
        local localplayer = entitylist.get_local_player()
        if not localplayer then return end
        ffi.cast("float*", ffi_helpers.get_entity_address(localplayer:get_index()) + 10100)[0] = 0
    end
    
    function leg_breaker(cmd)  
    if leg_fucker:get_value() == true then
            local legtype = math.random(0,4)
            local localplayer = entitylist.get_local_player()
            if not localplayer then return end
            ffi.cast("float*", ffi_helpers.get_entity_address(localplayer:get_index()) + m_flPoseParameter)[0] = 0
            local antihit_extra_leg_movement = ui.get_combo_box("antihit_extra_leg_movement")
            if clientstate.get_choked_commands() == 0 then
                antihit_extra_leg_movement:set_value(2)
            else
    
                
                    
                    if legtype == 3 then
                        antihit_extra_leg_movement:set_value(0)
                        
                    else
                        
                        antihit_extra_leg_movement:set_value(1)
                    
                    end
                
            end
    
    end
    end
    
    client.register_callback("paint", for_break)
    client.register_callback("create_move", leg_breaker)
    
    function for_static()
        local localplayer = entitylist.get_local_player()
        if not localplayer then return end
        local m_fFlags = se.get_netvar("DT_BasePlayer", "m_fFlags")
    
        local bOnGround = bit.band(localplayer:get_prop_float(m_fFlags), bit.lshift(1,0)) ~= 0
        if not bOnGround then
            ffi.cast("CCSGOPlayerAnimationState_534535_t**", ffi_helpers.get_entity_address(localplayer:get_index()) + offset_value)[0].flDurationInAir = 99
            ffi.cast("CCSGOPlayerAnimationState_534535_t**", ffi_helpers.get_entity_address(localplayer:get_index()) + offset_value)[0].flHitGroundCycle = 0
            ffi.cast("CCSGOPlayerAnimationState_534535_t**", ffi_helpers.get_entity_address(localplayer:get_index()) + offset_value)[0].bHitGroundAnimation = false
        end
    
        shared_onground = bOnGround
    end
    
    client.register_callback("paint", for_static)
    
    function on_sta_leg()
    if sta_leg:get_value() == true then
        local localplayer = entitylist.get_local_player()
        if not localplayer then return end
    
        local m_fFlags = se.get_netvar("DT_BasePlayer", "m_fFlags")
    
        local bOnGround = bit.band(localplayer:get_prop_float(m_fFlags), bit.lshift(1,0)) ~= 0
        if bOnGround and not shared_onground then 
            ffi.cast("CCSGOPlayerAnimationState_534535_t**", ffi_helpers.get_entity_address(localplayer:get_index()) + offset_value)[0].flDurationInAir = 0.5
        end -- ACT_CSGO_LAND_LIGHT
    end
    end
    client.register_callback("paint", on_sta_leg)
    --=========================================================================================================================

    
    
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
    
    function fire_log(info)
        
    if logs:get_value() == true then
        local shot_result, shot_target, target_hitbox, shot_damage =
            info.result,
            info.target,
            info.hitbox + 1,
            info.server_damage
    
        if shot_result == "spread" then
            local nixware = string.format("[nixware.cc] ")
            console_color = ffi.new("struct c_color")
            console_color.clr[3] = 255
            engine_cvar = ffi.cast("void***", se.create_interface("vstdlib.dll", "VEngineCvar007"))
            console_print =
                ffi.cast("void(__cdecl*)(void*, const struct c_color&, const char*, ...)", engine_cvar[0][25])
    
            console_color.clr[0] = 43
            console_color.clr[1] = 93
            console_color.clr[2] = 255
            console_print(engine_cvar, console_color, nixware)
    
            local temp_name = engine.get_player_info(shot_target:get_index()).name
            local target_name =
                string.len(temp_name) > 40 and string.lower(string.sub(temp_name, 0, 40)) .. "..." or
                string.lower(temp_name)
    
            local message_text = string.format("missed shot due to spread ", get_hitbox(target_hitbox))
            local notify_text = client.notify("missed shot due to spread ".. get_hitbox(target_hitbox))
            local nixware = string.format("[nixware.cc] ")
    
            console_color = ffi.new("struct c_color")
            console_color.clr[3] = 255
            engine_cvar = ffi.cast("void***", se.create_interface("vstdlib.dll", "VEngineCvar007"))
            console_print =
                ffi.cast("void(__cdecl*)(void*, const struct c_color&, const char*, ...)", engine_cvar[0][25])
    
            console_color.clr[0] = 200
            console_color.clr[1] = 0
            console_color.clr[2] = 0
            console_print(engine_cvar, console_color, message_text .. "\n")
        end
    
        if shot_result == "desync" then
            local nixware = string.format("[nixware.cc] ")
            console_color = ffi.new("struct c_color")
            console_color.clr[3] = 255
            engine_cvar = ffi.cast("void***", se.create_interface("vstdlib.dll", "VEngineCvar007"))
            console_print =
                ffi.cast("void(__cdecl*)(void*, const struct c_color&, const char*, ...)", engine_cvar[0][25])
    
            console_color.clr[0] = 43
            console_color.clr[1] = 93
            console_color.clr[2] = 255
            console_print(engine_cvar, console_color, nixware)
    
            local temp_name = engine.get_player_info(shot_target:get_index()).name
            local target_name =
                string.len(temp_name) > 40 and string.lower(string.sub(temp_name, 0, 40)) .. "..." or
                string.lower(temp_name)
    
            local message_text = string.format("missed shot due to resolver ", get_hitbox(target_hitbox))
            local notify_text = client.notify("missed shot due to resolver ".. get_hitbox(target_hitbox))
    
            console_color = ffi.new("struct c_color")
            console_color.clr[3] = 255
            engine_cvar = ffi.cast("void***", se.create_interface("vstdlib.dll", "VEngineCvar007"))
            console_print =
                ffi.cast("void(__cdecl*)(void*, const struct c_color&, const char*, ...)", engine_cvar[0][25])
    
            console_color.clr[0] = 200
            console_color.clr[1] = 0
            console_color.clr[2] = 0
            console_print(engine_cvar, console_color, message_text .. "\n")
        end
    
        if shot_result == "unk" then
            local nixware = string.format("[nixware.cc] ")
            console_color = ffi.new("struct c_color")
            console_color.clr[3] = 255
            engine_cvar = ffi.cast("void***", se.create_interface("vstdlib.dll", "VEngineCvar007"))
            console_print =
                ffi.cast("void(__cdecl*)(void*, const struct c_color&, const char*, ...)", engine_cvar[0][25])
    
            console_color.clr[0] = 43
            console_color.clr[1] = 93
            console_color.clr[2] = 255
            console_print(engine_cvar, console_color, nixware)
    
            local temp_name = engine.get_player_info(shot_target:get_index()).name
            local target_name =
                string.len(temp_name) > 40 and string.lower(string.sub(temp_name, 0, 40)) .. "..." or
                string.lower(temp_name)
    
            local message_text = string.format("missed shot due to unknown ", get_hitbox(target_hitbox))
            local notify_text = client.notify("missed shot due to unknown ".. get_hitbox(target_hitbox))
            console_color = ffi.new("struct c_color")
            console_color.clr[3] = 255
            engine_cvar = ffi.cast("void***", se.create_interface("vstdlib.dll", "VEngineCvar007"))
            console_print =
                ffi.cast("void(__cdecl*)(void*, const struct c_color&, const char*, ...)", engine_cvar[0][25])
    
            console_color.clr[0] = 200
            console_color.clr[1] = 0
            console_color.clr[2] = 0
            console_print(engine_cvar, console_color, message_text .. "\n")
        end
    
        if shot_result == "hit" then
            local nixware = string.format("[nixware.cc] ")
            console_color = ffi.new("struct c_color")
            console_color.clr[3] = 255
            engine_cvar = ffi.cast("void***", se.create_interface("vstdlib.dll", "VEngineCvar007"))
            console_print =
                ffi.cast("void(__cdecl*)(void*, const struct c_color&, const char*, ...)", engine_cvar[0][25])
    
            console_color.clr[0] = 43
            console_color.clr[1] = 93
            console_color.clr[2] = 255
            console_print(engine_cvar, console_color, nixware)
    
            message_text = string.format("did %d in %s", shot_damage, get_hitbox(target_hitbox))
            local notify_text = client.notify("did ".. shot_damage .. " in " .. get_hitbox(target_hitbox))
            console_color = ffi.new("struct c_color")
            console_color.clr[3] = 255
            engine_cvar = ffi.cast("void***", se.create_interface("vstdlib.dll", "VEngineCvar007"))
            console_print =
                ffi.cast("void(__cdecl*)(void*, const struct c_color&, const char*, ...)", engine_cvar[0][25])
            console_color.clr[0] = 0
            console_color.clr[1] = 200
            console_color.clr[2] = 0
            console_print(engine_cvar, console_color, message_text .. "\n")
        end
    end
    end
    
    function hurt (event)
    
    if logs:get_value() == true then
        if event:get_name() == "player_hurt" then
            local event_player = engine.get_player_for_user_id(event:get_int("userid", -1))
            local event_attacker = engine.get_player_for_user_id(event:get_int("attacker", -1))
            local local_player = engine.get_local_player()
            local event_damage = event:get_int("dmg_health", -1)
            local event_hitbox = event:get_int("hitgroup", -1)
    
            if event_player == local_player then
                local nixware = string.format("[nixware.cc] ")
                console_color = ffi.new("struct c_color")
                console_color.clr[3] = 255
                engine_cvar = ffi.cast("void***", se.create_interface("vstdlib.dll", "VEngineCvar007"))
                console_print =
                    ffi.cast("void(__cdecl*)(void*, const struct c_color&, const char*, ...)", engine_cvar[0][25])
    
                console_color.clr[0] = 43
                console_color.clr[1] = 93
                console_color.clr[2] = 255
                console_print(engine_cvar, console_color, nixware)
    
                local temp_name = engine.get_player_info(event_attacker).name
                local event_name =
                    string.len(temp_name) > 40 and string.lower(string.sub(temp_name, 0, 40)) .. "..." or
                    string.lower(temp_name)
    
                local message_text =
                    (temp_name == "" and "world" or event_name) ..
                    " did " ..
                        tostring(event_damage) ..
                            (temp_name == "" and " to you" or " damage in your " .. get_hitbox(event_hitbox))
    
                console_color = ffi.new("struct c_color")
                console_color.clr[3] = 255
                engine_cvar = ffi.cast("void***", se.create_interface("vstdlib.dll", "VEngineCvar007"))
                console_print =
                    ffi.cast("void(__cdecl*)(void*, const struct c_color&, const char*, ...)", engine_cvar[0][25])
    
                console_color.clr[0] = 200
                console_color.clr[1] = 0
                console_color.clr[2] = 0
                local notify_text = client.notify(message_text)
                console_print(engine_cvar, console_color, message_text .. "\n")
                
            end
        end
    end
    end
    
    client.register_callback("fire_game_event",hurt)
    client.register_callback("shot_fired",fire_log)
    
    
    
    local hearts = {}
    function draw_heart(x, y, color)
        rectangle(x + 2, y + 14, 2, 2, { 0, 0, 0, color[4] })
        rectangle(x, y + 12, 2, 2, { 0, 0, 0, color[4] })
        rectangle(x - 2, y + 10, 2, 2, { 0, 0, 0, color[4] })
        rectangle(x - 4, y + 4, 2, 6, { 0, 0, 0, color[4] })
        rectangle(x - 2, y + 2, 2, 2, { 0, 0, 0, color[4] })
        rectangle(x, y, 2, 2, { 0, 0, 0, color[4] })
        rectangle(x + 2, y, 2, 2, { 0, 0, 0, color[4] })
        rectangle(x + 4, y + 2, 2, 2, { 0, 0, 0, color[4] })
        rectangle(x + 6, y, 2, 2, { 0, 0, 0, color[4] })
        rectangle(x + 8, y, 2, 2, { 0, 0, 0, color[4] })
        rectangle(x + 10, y + 2, 2, 2, { 0, 0, 0, color[4] })
        rectangle(x + 12, y + 4, 2, 6, { 0, 0, 0, color[4] })
        rectangle(x + 10, y + 10, 2, 2, { 0, 0, 0, color[4] })
        rectangle(x + 8, y + 12, 2, 2, { 0, 0, 0, color[4] })
        rectangle(x + 6, y + 14, 2, 2, { 0, 0, 0, color[4] })
        rectangle(x + 4, y + 16, 2, 2, { 0, 0, 0, color[4] })
        rectangle(x - 2, y + 4, 2, 6, { color[1], color[2], color[3], color[4] })
        rectangle(x, y + 2, 4, 2, { color[1], color[2], color[3], color[4] })
        rectangle(x, y + 6, 4, 6, { color[1], color[2], color[3], color[4] })
        rectangle(x + 2, y + 4, 2, 2, { color[1], color[2], color[3], color[4] })
        rectangle(x + 2, y + 12, 2, 2, { color[1], color[2], color[3], color[4] })
        rectangle(x + 4, y + 4, 2, 12, { color[1], color[2], color[3], color[4] })
        rectangle(x + 6, y + 2, 4, 10, { color[1], color[2], color[3], color[4] })
        rectangle(x + 6, y + 12, 2, 2, { color[1], color[2], color[3], color[4] })
        rectangle(x + 10, y + 4, 2, 6, { color[1], color[2], color[3], color[4] })
    
        rectangle(x, y + 4, 2, 2, { 254, 199, 199, color[4] })
    end
    
    function on_heart_render()
        if not is_heart_enabled:get_value() then return end
    
        local realtime = globalvars.get_real_time()
        local colored = is_heart_colored:get_value()
    
        for i = 1, #hearts do
            if hearts[i] == nil then return end
            local heart = hearts[i]
    
            local vec = se.world_to_screen(
                vec3_t.new(heart.position.x, heart.position.y, heart.position.z)
            )
    
            local x = vec.x
            local y = vec.y
    
            local alpha = math.floor(255 - 255 * (realtime - heart.start_time))
    
            if realtime - heart.start_time >= 1 then
                alpha = 0
            end
    
            if x ~= nil and y ~= nil then
                if colored then
                    if heart.damage <= 15 then
                        draw_heart(x - 5, y - 5, { 60, 255, 0, alpha })
                    elseif heart.damage <= 30 then
                        draw_heart(x - 5, y - 5, { 255, 251, 0, alpha })
                    elseif heart.damage <= 60 then
                        draw_heart(x - 5, y - 5, { 255, 140, 0, alpha })
                    else
                        draw_heart(x - 5, y - 5, { 254, 19, 19, alpha })
                    end
                else
                    draw_heart(x - 5, y - 5, { 254, 19, 19, 255 })
                end
            end
    
            heart.position.z = heart.position.z + (realtime - heart.frame_time) * 50
            heart.frame_time = realtime
    
            if realtime - heart.start_time >= 1 then
                table.remove(hearts, i)
            end
        end
    end
    
    function on_shot_for_heart(e)
        if e.result ~= 'hit' then return end
    
        local time = globalvars.get_real_time()
    
        table.insert(hearts, {
            position = { x = e.aim_point.x, y = e.aim_point.y, z = e.aim_point.z },
            damage = e.server_damage,
            start_time = time,
            frame_time = time
        })
    end
    
    client.register_callback('paint', on_heart_render)
    client.register_callback('shot_fired', on_shot_for_heart)
    
    function for_scope_transparent()
        local me = entitylist.get_local_player()
    
        if not me or not me:is_alive() then
            return
        end
        if scope_transparent:getvalue() == true then
            if me:get_prop_bool(m_bIsScoped) then
                local alpha = clamp(math.floor(255 / 100 * (100 - transparent:get_value()) + 0.5), 1, 255)
    
                --visuals_models_local_color:set_value(color_t.new(cache.chams.r, cache.chams.g, cache.chams.b, alpha))
                visuals_models_local_material_color:set_value(color_t.new(cache.material.r, cache.material.g, cache.material.b, alpha))
            else
            --visuals_models_local_color:set_value(cache.chams)
            visuals_models_local_material_color:set_value(cache.material)
            end
        end
    end
    
    client.register_callback('create_move', for_scope_transparent)
    client.register_callback('on_unload', function ()
        --visuals_models_local_color:set_value(cache.chams)
        visuals_models_local_material_color:set_value(cache.material)
    end)
    --=========================================================================================================================
    client.register_callback("create_move", function()
    if flip_knife:get_value() == true then
        if is_knife() == true then
            se.get_convar("cl_righthand"):set_int(0)
        else
            se.get_convar("cl_righthand"):set_int(1)
        end
    end
    end)
    
    indicators_font = renderer.setup_font("C:/windows/fonts/comic.ttf", 18, 0)
    function on_indicators()

    
        if indicators:get_value() then
            if not legit_aa:is_active() then
                renderer.text('h', indicators_font_arrow, vec2_t.new(screen.x / 2 + 55, screen.y / 2 + 30), 30, color_t.new(255, 255, 255, 255))
            else
                renderer.text('h', indicators_font_arrow, vec2_t.new(screen.x / 2 + 55, screen.y / 2 + 30), 30, color_t.new(0, 0, 0, 100))
            end
    
            if is_fake_duck:is_active() then
                renderer.text('FD', indicators_font, vec2_t.new(screen.x / 2 - 7, screen.y / 2 + 30), 18, color_t.new(200, 190, 190, 255))
            end
    
            if not dmg_override:is_active() then
                renderer.text('DMG', indicators_font, vec2_t.new(screen.x / 2 - 12, screen.y / 2 + 40), 18, color_t.new(180, 180, 180, 255))
            else
                renderer.text('DMG', indicators_font, vec2_t.new(screen.x / 2 - 12, screen.y / 2 + 40), 18, color_t.new(180, 160, 0, 255))
            end
    
            renderer.text('ISONAMI', indicators_font, vec2_t.new(screen.x / 2 - 23, screen.y / 2 + 50), 18, color_t.new(105, 115, 175, 255))
    
            if legit_aa:is_active() then
                renderer.text('AA LEGIT', indicators_font, vec2_t.new(screen.x / 2 - 23, screen.y / 2 + 60), 18, color_t.new(255, 255, 255, 255))
            elseif is_desync_length:get_value() < 23 then
                renderer.text('LOW DELTA', indicators_font, vec2_t.new(screen.x / 2 - 30, screen.y / 2 + 60), 18, color_t.new(200, 120, 130, 255))
            elseif is_inverted:is_active() then
                renderer.text('RIGHT', indicators_font, vec2_t.new(screen.x / 2 - 16, screen.y / 2 + 60), 18, color_t.new(160, 160, 195, 255))
            else
                renderer.text('LEFT', indicators_font, vec2_t.new(screen.x / 2 - 12, screen.y / 2 + 60), 18, color_t.new(160, 160, 195, 255))
            end
    
            
    
            if is_exploit_type:get_value() == 2 and is_exploit_bind:is_active() then
                renderer.text('DT', indicators_font, vec2_t.new(screen.x / 2 - 7, screen.y / 2 + 70), 18, color_t.new(150, 150, 65, 255))
            elseif is_exploit_type:get_value() == 1 and is_exploit_bind:is_active() then
                renderer.text('ONSHOT', indicators_font, vec2_t.new(screen.x / 2 - 22, screen.y / 2 + 70), 18, color_t.new(150, 150, 65, 255))
            end
        end
    end
    client.register_callback("paint", on_indicators)
    --=========================================================================================================================
    function molo()
        local infernos = entitylist.get_entities_by_class("CInferno")
        for i=1, #infernos do
            local inferno = infernos[i]
            local fires = {}
            
            local local_player = entitylist.get_local_player()
            local origin = inferno:get_prop_vector(m_vecOrigin)
            local count = inferno:get_prop_int(m_fireCount)
            
            for j=1, count do
                local is_burning = inferno:get_prop_bool(m_bFireIsBurning + (j - 1) * 1)
                if is_burning then
                    local pos_x = inferno:get_prop_int(m_fireXDelta + (j - 1) * 4) + origin.x
                    local pos_y = inferno:get_prop_int(m_fireYDelta + (j - 1) * 4) + origin.y
                    local pos_z = inferno:get_prop_int(m_fireZDelta + (j - 1) * 4) + origin.z
                    if not pos_x ~= pos_x then
                        if not pos_y ~= pos_y then
                            if not pos_z ~= pos_z then 
                                table.insert(fires, vec3_t.new(pos_x, pos_y, pos_z))
                            end
                        end
                    end
                end
            end
            
            for j=1, #fires do
                draw_flame(fires[j])
            end
        end
    end
    
    client.register_callback("paint", molo)
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
    watermark_font = renderer.setup_font("C:/windows/fonts/comic.ttf", 18, 0)
    write_font = renderer.setup_font("C:/windows/fonts/segoescb.ttf", 18, 0)
    --function on_watermark()
        --ping = se.get_latency()
        --text = "teiku.moe | isonami | ".. username .." | ping " .. ping .. "ms" 
        --text_size = renderer.get_text_size(watermark_font, 18, text)
        --x = watermark_x:get_value()
        --y = watermark_y:get_value()
    
        --if watermark:get_value() then
            --renderer.rect_filled(vec2_t.new(x + 226, y + 2), vec2_t.new(x, y + 1), color_t.new(130, 255, 80, 255))
            --renderer.text(text, watermark_font, vec2_t.new(x + 5, y + 5), 18, color_t.new(220, 220, 220, 255))
        --end
    --end
    --client.register_callback("paint", on_watermark)
    
    
    function new_watermark()
        local screensize = engine.get_screen_size()
        if nwatermark:get_value() == true then
            
            local time = os.date("%X")
            local ping = se.get_latency()
            local text = "            | " .. username .. " | " .. ping .. "ms | " .. time 
            local text2 = "ISONAMI" 
            local ISONAMI = "ISONAMI"
            local text_size = renderer.get_text_size(watermark_font, 20, text)
            local text_size2 = renderer.get_text_size(watermark_font, 18, text2)
            local x = screensize.x - text_size.x - 25
            local y = 10
            local h = 20
            renderer.rect_filled(vec2_t.new(x + 5, y + 10), vec2_t.new(x+text_size.x + 20, 20+h), color_t.new(11, 11, 20, 200))
    
            renderer.rect_filled(vec2_t.new(x + 5, y + 11), vec2_t.new(x+text_size.x + 20, y+20),color_t.new(11, 11, 20, 255))
    
    
            renderer.text( ISONAMI, write_font, vec2_t.new(x+11, y+11), 18, color_t.new(125, 40, 205, 255))
            renderer.text( text, watermark_font, vec2_t.new(x+17, y+10), 18, color_t.new(255, 255, 255, 255))
            renderer.text( text2, write_font, vec2_t.new(x+12, y+10), 18, color_t.new(255, 255, 255, 255))
    
        end
    end
    client.register_callback("paint", new_watermark)
    --=========================================================================================================================
    hotkey_binds_font = renderer.setup_font("C:/windows/fonts/comic.ttf", 18, 0)
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
                renderer.rect_filled(vec2_t.new(x + 190, y + 2), vec2_t.new(x, y + 1), color_t.new(125, 40, 205, 255))
                renderer.text(text, hotkey_binds_font, vec2_t.new(x + 5, y + 5), 18, color_t.new(220, 220, 220, 255))
    
                renderer.text(k, hotkey_binds_font, vec2_t.new(x + 10, y + 5 + (18 * add)), 18, color_t.new(255, 255, 255, 255))
                renderer.text(state, hotkey_binds_font, vec2_t.new(x + 150 - renderer.get_text_size(hotkey_binds_font, 12, state).x + 30, y + 5 + (18 * add)), 18, color_t.new(255, 255, 255, 255))
            end
        end
    end
    client.register_callback("paint", on_hotkey_binds)
    
    function damaged_warn()
        local warn = dmged:get_value()
        local size = dmged_size:get_value()
        local alpha = dmged_alpha:get_value()
        local x = dmged_x:get_value()
        local y = dmged_y:get_value()
        if warn > 1 and warn < 100 then
            if entitylist:get_local_player():get_prop_int(se.get_netvar("DT_BasePlayer", "m_iHealth")) >= warn then
                renderer.texture( defpng , vec2_t.new(x, y), vec2_t.new(x + 155 * size,y +  260 * size), color_t.new(255, 255, 255, alpha))
            else
                renderer.texture( dmgpng , vec2_t.new(x, y), vec2_t.new(x + 197 * size,y +  135 * size), color_t.new(255, 255, 255, alpha))
            end
        end
    end
    --entitylist:get_local_player():get_prop_int(m_iHealth) >= warn then
    
    
    client.register_callback("paint", damaged_warn)
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
    function print_fps()
        if fps_boost:get_value() == true then
        se.get_convar("r_3dsky"):set_int(0)
        se.get_convar("r_shadows"):set_int(0)
        se.get_convar("cl_csm_static_prop_shadows"):set_int(0)
        se.get_convar("cl_csm_shadows"):set_int(0)
        se.get_convar("cl_csm_world_shadows"):set_int(0)
        se.get_convar("cl_foot_contact_shadows"):set_int(0)
        se.get_convar("cl_csm_viewmodel_shadows"):set_int(0)
        se.get_convar("cl_csm_rope_shadows"):set_int(0)
        se.get_convar("cl_csm_sprite_shadows"):set_int(0)
        se.get_convar("cl_disablefreezecam"):set_int(1)
        se.get_convar("cl_freezecampanel_position_dynamic"):set_int(0)
        se.get_convar("cl_freezecameffects_showholiday"):set_int(0)
        se.get_convar("cl_showhelp"):set_int(0)
        se.get_convar("cl_autohelp"):set_int(0)
        se.get_convar("cl_disablehtmlmotd"):set_int(1)
        se.get_convar("mat_postprocess_enable"):set_int(0)
        se.get_convar("fog_enable_water_fog"):set_int(0)
        se.get_convar("gameinstructor_enable"):set_int(0)
        se.get_convar("cl_csm_world_shadows_in_viewmodelcascade"):set_int(0)
        se.get_convar("cl_disable_ragdolls"):set_int(1)
        else
        se.get_convar("r_3dsky"):set_int(1)
        se.get_convar("cl_csm_static_prop_shadows"):set_int(1)
        se.get_convar("cl_csm_shadows"):set_int(1)
        se.get_convar("cl_csm_world_shadows"):set_int(1)
        se.get_convar("cl_foot_contact_shadows"):set_int(0)
        se.get_convar("cl_csm_viewmodel_shadows"):set_int(1)
        se.get_convar("cl_csm_rope_shadows"):set_int(1)
        se.get_convar("cl_csm_sprite_shadows"):set_int(1)
        se.get_convar("cl_disablefreezecam"):set_int(1)
        se.get_convar("cl_freezecampanel_position_dynamic"):set_int(0)
        se.get_convar("cl_freezecameffects_showholiday"):set_int(0)
        se.get_convar("mat_postprocess_enable"):set_int(1)
        se.get_convar("fog_enable_water_fog"):set_int(1)
        se.get_convar("cl_csm_world_shadows_in_viewmodelcascade"):set_int(1)
        se.get_convar("cl_disable_ragdolls"):set_int(0)
        end
    end
    
    client.register_callback("paint", print_fps)
    
    function on_unload_fps()
        se.get_convar("r_3dsky"):set_int(1)
        se.get_convar("cl_csm_static_prop_shadows"):set_int(1)
        se.get_convar("cl_csm_shadows"):set_int(1)
        se.get_convar("cl_csm_world_shadows"):set_int(1)
        se.get_convar("cl_foot_contact_shadows"):set_int(0)
        se.get_convar("cl_csm_viewmodel_shadows"):set_int(1)
        se.get_convar("cl_csm_rope_shadows"):set_int(1)
        se.get_convar("cl_csm_sprite_shadows"):set_int(1)
        se.get_convar("cl_disablefreezecam"):set_int(1)
        se.get_convar("cl_freezecampanel_position_dynamic"):set_int(0)
        se.get_convar("cl_freezecameffects_showholiday"):set_int(0)
        se.get_convar("mat_postprocess_enable"):set_int(1)
        se.get_convar("fog_enable_water_fog"):set_int(1)
        se.get_convar("cl_csm_world_shadows_in_viewmodelcascade"):set_int(1)
        se.get_convar("cl_disable_ragdolls"):set_int(0)
    end
    client.register_callback("unload", on_unload_fps)
    
    function paint_blur()
        if panorama_blur:get_value() == true then
            se.get_convar("@panorama_disable_blur"):set_int(1)
        else
            se.get_convar("@panorama_disable_blur"):set_int(0)
        end
    end
    
    function on_unload_blur()
        se.get_convar("@panorama_disable_blur"):set_int(0)
    end
    client.register_callback("unload", on_unload_blur)
    
    function on_clean_blood()
        if clean_blood:is_active() == true then
            engine.execute_client_cmd("r_cleardecals")
        end
    end
    client.register_callback("create_move", on_clean_blood)
    
    local anti_b = 0
    while anti_b < 21 do
        anti_b = anti_b +1
        engine_cvar = ffi.cast("void***", se.create_interface("vstdlib.dll", "VEngineCvar007"))
        local console_print =
                    ffi.cast("void(__cdecl*)(void*, const struct c_color&, const char*, ...)", engine_cvar[0][25])
    
                console_color.clr[0] = 200
                console_color.clr[1] = 0
                console_color.clr[2] = 0
                console_color.clr[3] = 255
        console_print(engine_cvar, console_color, ANTIBUG[anti_b])
    end
    local function on_create_move()
        --AA_execute(cmd)
        --essentials(cmd)
        AA_switch()
        on_aim_angle_fix()
        on_shot_do()
    end
    
    client.register_callback("create_move", essentials) 
    client.register_callback("create_move", AA_execute) 
    client.register_callback("create_move", on_create_move)   
    local function on_paint()
        on_select_tab()
        to_show_aa()
        to_call_back()
    end
    client.register_callback("paint", on_paint)
    --=========================================================================================================================
    to_show_tab0()
    to_hide_tab1()
    to_hide_tab2()
    to_hide_tab3()
    to_hide_tab4()