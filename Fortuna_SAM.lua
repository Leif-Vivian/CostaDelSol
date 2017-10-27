function get_sets()
	mote_include_version = 2
	include('Mote-Include.lua')
end


function job_setup()
	state.Buff['Seigan'] = buffactive['Seigan'] or false
	state.Buff['Hasso'] = buffactive['Hasso'] or false
end

function user_setup()
	state.OffenseMode:options('Normal', 'Acc')
	state.PhysicalDefenseMode:options('PDT')
	state.MagicalDefenseMode:options('MDT')
	
	send_command('bind f9 gs c cycle OffenseMode')
	send_command('bind f10 gs c set DefenseMode Physical')
	send_command('bind ^f10 gs c cycle PhysicalDefenseMode')
	send_command('bind f11 gs c set DefenseMode Magical')
	send_command('bind ^f11 gs c cycle MagicalDefenseMode')
end	

function user_unload()
	send_command('unbind f9')
	send_command('unbind f10')
	send_command('unbind ^f10')
	send_command('unbind f11')
	send_command('unbind ^f11')
end

function init_gear_sets()
	
	sets.precast.JA['Meditate'] =
	{
		head="Myochin kabuto",
		hands="Saotome kote"
	}
	
	sets.precast.WS = 
	{
		head="Wyvern Helm", 
        neck="Chivalrous chain", 
        ear1="Brutal earring", 
        ear2="Bushinomimi",
        body="Byrnie +1", 
        hands="Alkyoneus's bracelets", 
        ring1="Rajas ring", 
        ring2="Flame ring", 
        back="Cerbus mantle +1", 
        waist="Warwolf belt", 
        legs="Hachiryu haidate", 
        feet="Hachiman sune-ate +1"
    }
	
	sets.precast.WS['Tachi: Gekko'] =
	{
		head="Wyvern helm", 
        neck="Snow gorget", 
        ear1="Brutal earring", 
        ear2="Bushinomimi",
        body="Byrnie +1", 
        hands="Alkyoneus's bracelets", 
        ring1="Rajas ring", 
        ring2="Flame ring", 
        back="Cerbus mantle +1", 
        waist="Warwolf belt", 
        legs="Hachiryu haidate", 
        feet="Hachiman sune-ate +1"
    }
	
	sets.precast.WS['Tachi: Rana'] =
	{
		head="Hissho hachimaki", 
        neck="Soil gorget", 
        ear1="Brutal earring", 
        ear2="Bushinomimi",
        body="Byrnie +1", 
        hands="Bandomusha kote", 
        ring1="Rajas ring", 
        ring2="Toreador's ring", 
        back="Cerbus mantle +1", 
        waist="Warwolf belt", 
        legs="Hachiryu haidate", 
        feet="Hachiman sune-ate +1"
    }
	
	
	sets.precast.WS['Tachi: Kasha'] =
	{
		head="Wyvern helm", 
        neck="Light gorget", 
        ear1="Brutal earring", 
        ear2="Bushinomimi",
        body="Byrnie +1", 
        hands="Alkyoneus's bracelets", 
        ring1="Rajas ring", 
        ring2="Flame ring", 
        back="Cerbus mantle +1", 
        waist="Warwolf belt", 
        legs="Hachiryu haidate", 
        feet="Hachiman sune-ate +1"
    }
	
	sets.precast.WS['Tachi: Shoha'] =
	{
		head="Wyvern helm", 
        neck="Breeze gorget", 
        ear1="Brutal earring", 
        ear2="Bushinomimi",
        body="Byrnie +1", 
        hands="Alkyoneus's bracelets", 
        ring1="Rajas ring", 
        ring2="Flame ring", 
        back="Cerbus mantle +1", 
        waist="Warwolf belt", 
        legs="Hachiryu haidate", 
        feet="Hachiman sune-ate +1"
    }
	
	sets.precast.WS['Tachi: Yukikaze'] =
	{
		head="Wyvern helm", 
        neck="Breeze gorget", 
        ear1="Brutal earring", 
        ear2="Bushinomimi",
        body="Byrnie +1", 
        hands="Alkyoneus's bracelets", 
        ring1="Rajas ring", 
        ring2="Flame ring", 
        back="Cerbus mantle +1", 
        waist="Warwolf belt", 
        legs="Hachiryu haidate", 
        feet="Hachiman sune-ate +1"
    }
	
	sets.precast.WS['Namas Arrow'] =
	{
		head="Enkidu's cap", 
        neck="Light gorget", 
        ear1="Bushinomimi", 
        ear2="Hollow earring",
        body="Kirin's osode", 
        hands="Seiryu's kote", 
        ring1="Rajas ring", 
        ring2="Blobnag ring", 
        back="Amemet mantle +1", 
        waist="Buccaneer's belt", 
        legs="Hachiryu haidate", 
        feet="Hachiryu sune-ate"
    }
	
	sets.midcast['Utsusemi'] = 
    {
		head="Walahra turban", 
        ear1="Dodge earring",
		ear2="Dodge earring",
		body="Kyudogi +1",
		hands="Dusk gloves +1", 
        back="Boxer's mantle",
		waist="Velocious Belt",
		legs="Byakko's haidate",
		feet="Dusk ledelsens +1"
    }
	
	sets.midcast.RA =
	{
		head="Enkidu's cap", 
        neck="Peacock amulet",
		ear1="Drone earring",
		ear2="Hollow earring",
		body="Kyudogi +1",
		hands="Seiryu's kote",
		ring1="Merman's ring",
		ring2="Merman's ring",
        back="Amemet mantle +1",
		waist="Buccaneer's belt",
		legs="Hachiryu haidate",
		feet="Hachiryu sune-ate"
    }
	
	sets.engaged =
	{
		head="Walahra turban", 
        neck="Chivalrous chain", 
        ear1="Brutal earring", 
        ear2="Bushinomimi",
        body="Hachiryu haramaki", 
        hands="Dusk gloves +1", 
        ring1="Rajas ring", 
        ring2="Toreador's ring", 
        back="Cerberus mantle +1", 
        waist="Velocious belt", 
        legs="Byakko's haidate", 
        feet="Dusk ledelsens +1"
	}
	
	sets.engaged.Nanatsu = set_combine(
	sets.engaged,
	{
		main="Nanatsusayanotachi",
		sub="Rose strap",
		ammo="White tathlum",
        neck="Almah torque", 
        body="Shm. Hara-Ate"
	})
	
	sets.engaged.Nanatsu.Acc = set_combine(
	sets.engaged,
	{
		main="Nanatsusayanotachi",
		sub="Rose strap",
		range="Yoichinoyumi",
		ammo="Kabura arrow",
        neck="Almah torque",
        hands="Hachiryu kote",
		feet="Hachiman sune-ate +1"
	})
	
	sets.idle = 
    {
		head="Arhat's jinpachi +1", 
        neck="Orochi nodowa", 
        ear1="Drone earring", 
        ear2="Drone earring",
        body="Arhat's gi +1", 
        hands="Seiryu's kote", 
        ring1="Jelly ring", 
        ring2="Volunteer's ring", 
        back="Boxer's mantle", 
        waist="Scouter's rope", 
        legs="Saotome haidate", 
        feet="Hachiryu sune-ate"
    }

function job_status_change(new,old)

	if new == "Engaged" then
	
		if player.equipment.main == 'Nanatsusaya' then
            state.CombatWeapon:set('Nanatsu')
        elseif player.equipment.main == 'Soboro Sukehiro' then
            state.CombatWeapon:set('Soboro')
		else
            state.CombatWeapon:reset()
        end
end
end

function customize_melee_set(meleeSet)

	if state.Buff['Seigan'] then
        meleeSet = set_combine(meleeSet,{legs="Saotome haidate"})
    end
    return meleeSet

end

function customize_melee_set(meleeSet)

	if state.Buff['Hasso'] then
        meleeSet = set_combine(meleeSet,{legs="Byakko's haidate"})
    end
    return meleeSet

end
end