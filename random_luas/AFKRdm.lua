
_addon.name    = 'AFKRdm'
_addon.author  = 'mostlytim'
_addon.version = '1.0.0'
_addon.command = 'AFKRdm'

require('sets')
require('tables')
require('string')
files = require('files')
res = require('resources')

luopan=nil
target=nil

mb_counter = 1
mb_spells = {'Aspir III', 'Aspir II', 'Aspir'}

geo_flag_map = T{
    --debuffs
    ["poison"] = "Geo-Poison",
    ["slow"] = "Geo-Slow",
    ["eva-"] = "Geo-Torpor",
    ["acc-"] = "Geo-Slip",
    ["meva"] = "Geo-Languor",
    ["para"] = "Geo-Paralysis",
    ["macc-"] = "Geo-Vex",
    ["def-"] = "Geo-Frailty",
    ["atk-"] = "Geo-Wilt",
    ["grav"] = "Geo-Gravity",
    ["mdef-"] = "Geo-Malaise",
    ["matk-"] = "Geo-Fade",
    -- buffs
    ["refresh"] = "Geo-Refresh",
    ["haste"] = "Geo-Haste",
    ["eva"] = "Geo-Voidance",
    ["acc"] = "Geo-Precision",
    ["meva"] = "Geo-Attunement",
    ["macc"] = "Geo-Focus",
    ["def"] = "Geo-Barrier",
    ["atk"] = "Geo-Fury",
    ["mdef"] = "Geo-Fend",
    ["matk"] = "Geo-Acumen",
}

elements = T{
    ["fire"] = "Fire",
    ["wind"] = "Aero",
    ["thunder"] = "Thunder",
    ["holy"] = "Banish",
    ["ice"] = "Blizzard",
    ["water"] = "Water",
    ["earth"] = "Stone",
    ["aspir"] = "Aspir",
    ["drain"] = "Drain",
}

offensive_geo_spells = T{"Geo-Poison", "Geo-Slow", "Geo-Torpor", "Geo-Slip", "Geo-Languor", "Geo-Paralysis", "Geo-Vex", "Geo-Frailty", "Geo-Wilt", "Geo-Gravity", "Geo-Malaise", "Geo-Fade"}
offensive_geo_flags = T{"poison", "slow", "eva-", "acc-", "meva-", "para", "macc-", "def-", "atk-", "grav", "mdef-", "matk-"}
-- geo-pan death handling -- only debuffs
windower.register_event("action message", function (actor_id, target_id, actor_index, target_index, message_id, param_1, param_2, param_3)
    if message_id == 563 then
        if get_name(target_index) == 'Luopan' then
                target = get_name(actor_index)
            if luopan == nil then
                luopan = 'Geo-Frailty'
            end

            if listContains(offensive_geo_spells, luopan) then -- if the geopan is NOT offensive
                target = actor_id
                target_name = get_name(actor_index)
            else
                target = '<p1>'
                target_name = '<p1>'
            end

            windower.send_command('input /p A luopan has been destroyed.')
            print(string.format('input /ma %1s %2s', luopan, target))
            windower.send_command(string.format('input /p Casting %1s on %2s', luopan, target_name))
            windower.send_command(string.format('input /ma %1s %2s', luopan, target))
            windower.send_command('input /lockon')
        end
    end
end)

-- track weaponskill usage
windower.register_event('addon command',function (command, ...)
    command = command and command:lower() or 'help'

    local command_args = {...}
    tmp_table = T{}
    -- for i, a in pairs(command_args) do
    --     print(a)
    -- end

    if command == 'help' or command == 'h' or command == '?' then
        display_help()
    elseif command == 'show' then
        -- do stuff
    elseif command == 'reset' then
        -- do stuff
    elseif command == 'luopan' then

        if command_args[1] ~= nil and listContains(offensive_geo_flags, command_args[1]) then
            luopan = command_args[1] or 'Geo-Frailty'
            print(string.format('Setting Luopan to %s.', luopan))
        end

        -- windower.send_command(string.format('input /ma "%s" ', luopan) .. '<me>')
    elseif command == 'test' then
        -- nui id == 597433
        print('test')
    else
        display_help()
    end
end)

function luopan_check()
    -- nui id == 597433

    player_info = windower.ffxi.get_player()
    if player_info['in_combat'] == false or player_info['main_job'] ~= 'GEO' then -- skip if not in combat
        return true
    end

    player_mob_info = windower.ffxi.get_mob_by_id(player_info.id)

    if player_mob_info['pet_index'] then
        pet_index = player_mob_info['pet_index']
        pet_info = windower.ffxi.get_mob_by_index(pet_index)
        if pet_info['name'] == 'Luopan' then
            -- print('luopan is up')
            return true
        end
    else
        -- print('no pet')
        return false
    end
end

--display a basic help section
function display_help()
    windower.add_to_chat(7, _addon.name .. ' v.' .. _addon.version)
    windower.add_to_chat(7, 'Usage: //AFKRdm cmd')
end

function get_name(id)
    mob = windower.ffxi.get_mob_by_index(id)
    if mob ~= nil then
        return mob.name or '???'
    else
        return nil
    end
end

busy = false
always_follow = false
magicburst = true
windower.register_event('chat message', function(original, sender, mode, gm)
    -- mode 26 is shout
    -- mode 4 is party
    -- mode 3 is tell
    -- mode 27 is ls

    player_info = windower.ffxi.get_player()
    if player_info.status == 2 or player_info.status == 3 then
        return
    end

    -- from party
    split_orig = split(original)
    original = split_orig[1]
    if split_orig[3] ~= nil then
        -- tbh don't need this anymore since you can't use quoted strings as target
        target = '"' .. split_orig[2] .. ' ' .. split_orig[3] .. '"'
    elseif split_orig[2] then
        target = split_orig[2]
    else
        target = sender
    end
    -- for i, x in pairs(split_orig) do
    --     print(x)
    -- end
    -- -- print(original, sender, mode, gm)

    if (mode == 4) then

        if busy == true then
            windower.send_command('input /p I am busy or Broken! Beep Boop Beep')
            return
        end
        -- whm stuff
        elseif (original:lower() == "cure") then
            busy = true
            windower.send_command('input /p Casting Cure IV on ' .. target)
            windower.send_command('input /ma "Cure IV" ' .. target)

        elseif (original:lower() == "raise") then
            busy = true
            windower.send_command('input /p Raising ' .. target)
            windower.send_command('input /ma "Raise II" ' .. target)
            windower.send_command('input /ma "Raise" ' .. target)
            sleep(15)

        elseif (original:lower() == "Haste2") then
            busy = true
            windower.send_command('input /p Casting Haste II on ' .. target)
            windower.send_command('input /ma "Haste II" ' .. target)

        elseif (original:lower() == "Phalanx") then
            busy = true
            windower.send_command('input /p Casting Phalanx on ' .. target)
            windower.send_command('input /ma "Phalanx" ' .. target)

        elseif (original:lower() == "Refresh") then
            busy = true
            windower.send_command('input /p Casting Refresh III on ' .. target)
            windower.send_command('input /ma "Refresh III" ' .. target)

        -- rdm stuff
        elseif (original: lower() == "fullattk") then
            busy = true
            windower.send_command('input /ja "Blaze of Glory" <me>')
            sleep(1)
            windower.send_command('input /ma "Geo-Fury" <p1>')
            sleep(6)
            windower.send_command('input /ja "Ecliptic Attrition" <me>')
            sleep(1)
            windower.send_command('input /ma "Indi-Frailty" <me>')
            sleep(6)
            windower.send_command('input /ma "Cure" tentai')
            sleep(6)
            windower.send_command('input /ja "Life Cycle" <me>')
            sleep(1)
           windower.send_command('input /ja "Dematerialize" <me>')

        elseif (original: lower() == "fullmdef") then
            busy = true
            windower.send_command('input /ja "Blaze of Glory" <me>')
            sleep(1)
            windower.send_command('input /ma "Geo-Attunement" <p1>')
            sleep(6)
            windower.send_command('input /ja "Ecliptic Attrition" <me>')
            sleep(1)
            windower.send_command('input /ma "Indi-Fend" <me>')
            sleep(6)
            windower.send_command('input /ma "Cure" tentai')
            sleep(6)
            windower.send_command('input /ja "Life Cycle" <me>')
            sleep(1)
            windower.send_command('input /ja "Dematerialize" <me>')

        elseif (original: lower() == "fulldef") then
            busy = true
            windower.send_command('input /ja "Blaze of Glory" <me>')
            sleep(1)
            windower.send_command('input /ma "Geo-Barrier" <p1>')
            sleep(6)
            windower.send_command('input /ja "Ecliptic Attrition" <me>')
            sleep(1)
            windower.send_command('input /ma "Indi-Wilt" <me>')
            sleep(6)
            windower.send_command('input /ma "Cure" tentai')
            sleep(6)
            windower.send_command('input /ja "Life Cycle" <me>')
            sleep(1)
            windower.send_command('input /ja "Dematerialize" <me>')


        elseif elements[original:lower()] ~= nil then
            -- ["fire"] = "Fire"
            -- ["wind"] = "Aero"
            -- ["thunder"] = "Thunder"
            -- ["holy"] = "Banish"
            -- ["ice"] = "Blizzard"
            -- ["water"] = "Water"
            -- ["earth"] = "Stone"
            -- ["aspir"] = "Aspir"
            -- ["drain"] = "Drain"
            windower.send_command('input /assist ' .. sender)
            sleep(1)
            windower.send_command(string.format('input /ma "%s V" <t>', elements[original:lower()]))
            windower.send_command(string.format('input /ma "%s IV" <t>', elements[original:lower()]))
            windower.send_command(string.format('input /ma "%s III" <t>', elements[original:lower()]))

        -- tentai only
        elseif (sender:lower() == 'tentai') then
            -- other addons
            if (original:lower() == "dimmer") then
                windower.send_command('dimmer')

            elseif (original:lower() == "home") then
                windower.send_command('myhome')

            elseif (original:lower() == "follow") then
                windower.send_command('ffo tentai')
                always_follow = true

            elseif (original:lower() == "stop") then
                windower.send_command('ffo stop')
                always_follow = false

            elseif (original:lower() == "cling") then
                -- renable following after casting spells
                if always_follow then always_follow = false else always_follow = true end
            -- misc stuff
            elseif (original:lower() == "mount") then
                busy = true
                windower.send_command('input /mount "Tulfaire"')

            elseif (original:lower() == "dismount") then
                windower.send_command('input /dismount')

            elseif (original:lower() == "sneak") then
                busy = true
                windower.send_command('input /ma "Sneak" tentai')
                sleep(7)
                windower.send_command('input /ma "Invisible" tentai')
                sleep(8)
                windower.send_command('input /ma "Sneak" <me>')
                sleep(7)
                windower.send_command('input /ma "Invisible" <me>')
            end
        end
    end
    if busy == true then
        sleep(5)
        busy = false
    end
end )

function split(inputstr, sep)
        if sep == nil then
                sep = " "
        end
        local t={}
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                table.insert(t, str)
        end
        return t
end

function sleep(n)  -- seconds
    local clock = os.clock
    local t0 = clock()
    while clock() - t0 <= n do end
end

function table_to_str(target_table, delimiter)
    new_str = ''
    for i, t in pairs(target_table) do
        new_str = new_str .. delimiter .. t
    end
    return new_str
end


function sleep(n)
    local t0 = os.clock()
    while os.clock() - t0 <= n do end
end

function listContains(list, value)
    for _, v in ipairs(list) do
        if value == v then
            return true
        end
    end
    return false
end
