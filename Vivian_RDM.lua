function get_sets()
	mote_include_version = 2
	include('Mote-Include.lua')
end

function user_setup()
	state.CastingMode:options('Potency', 'Skill', 'TP')
	state.OffenseMode:options('Haste', 'ACC', 'DW')
	state.PhysicalDefenseMode:options('None', 'Tank', 'Breath', 'PDT')
	state.IdleMode:options('Normal', 'PDT')
	
	send_command('bind f8 gs c cycle CastingMode')
	send_command('bind f9 gs c cycle OffenseMode')
	send_command('bind f10 gs c set DefenseMode Physical')
	send_command('bind ^f10 gs c cycle PhysicalDefenseMode')
	send_command('bind f11 gs c cycle IdleMode')
end	

function user_unload()
	send_command('unbind f8')
	send_command('unbind f9')
	send_command('unbind f10')
	send_command('unbind ^f10')
	send_command('unbind f11')
end

function init_gear_sets()
   
   -- Precast Sets--	
	sets.precast.FC = 
	{
		head="Warlock's chapeau +1", 
		ear2="Loquacious earring",
		body="Duelist's tabard +1"
	}
	
	sets.precast.WS = 
	{
		head="Morrigan's coronal", 
        neck="Spike necklace", 
        ear1="Cassie earring", 
        ear2="Suppanomimi",
        body="Scorpion harness +1", 
        hands="Alkyoneus's bracelets", 
        ring1="Sun ring", 
        ring2="Sniper's ring +1", 
        back="Forager's mantle", 
        waist="Potent belt", 
        legs="Hydra brais", 
        feet="Savage gaiters"
    }
	
	-- Midcast Sets--
	sets.midcast['Utsusemi'] = 
    {
        main="Seveneyes",
		sub="Sentinel shield",
		ammo="Fenrir's stone",
		head="Warlock's chapeau +1", 
        ear1="Magnetic earring",
		ear2="Loquacious earring",
		body="Duelist's tabard +1",
		hands="Dusk gloves", 
        back="Prism cape",
		waist="Velocious Belt",
		feet="Dusk ledelsens +1"
    }
	
	
	sets.midcast['Enfeebling Magic'] = 
    {
        main="Chatoyant staff",
		sub="Bugard strap +1",
		ammo="Sturm's report",
        head="Duelist's chapeau +1", 
        neck="Enfeebling torque", 
        ear1="Abyssal earring", 
        ear2="Morion earring +1",
        body="Warlock's tabard", 
        hands="Bricta's cuffs", 
        ring1="Tamas ring", 
        ring2="Omega ring",
        back="Altruistic cape", 
        waist="Witch sash", 
        legs="Mahatma slops", 
        feet="Avocat pigaches"
    }
	
	sets.midcast['Slow'] = 
    {
        main="Chatoyant staff",
		sub="Earth grip",
		ammo="Sturm's report",
		ear1="Star earring", 
        ear2="Celestial earring",
		body="Warlock's tabard", 
        hands="Bricta's cuffs",
		ring1="Karka ring",
		ring2="Omega ring",
        back="Altruistic cape", 
        waist="Witch sash", 
        legs="Mahatma slops", 
        feet="Avocat pigaches"
    }
	
	sets.midcast['Slow'].Potency = set_combine(
    sets.midcast['Slow'], 
    {
        main="Chatoyant staff",
		sub="Bugard strap +1",
		body="Crimson scale mail",
		ear1="Star earring", 
        ear2="Celestial earring",
        ring1="Karka ring",
		ring2="Tamas ring",
		back="Prism cape",
		feet="Duelist's boots +1"
    })
	
	sets.midcast['Slow II'] = 
    {
        main="Chatoyant staff",
		sub="Earth grip",
		ammo="Sturm's report",
		ear1="Star earring", 
        ear2="Celestial earring",
		body="Warlock's tabard", 
        hands="Bricta's cuffs",
		ring1="Karka ring",
		ring2="Omega ring",
        back="Altruistic cape", 
        waist="Witch sash", 
        legs="Mahatma slops", 
        feet="Avocat pigaches"
    }
	
	sets.midcast['Slow II'].Potency = set_combine(
    sets.midcast['Slow II'], 
    {
        main="Chatoyant staff",
		sub="Bugard strap +1",
		body="Crimson scale mail",
		ear1="Star earring", 
        ear2="Celestial earring",
        ring1="Karka ring",
		ring2="Tamas ring",
		back="Prism cape",
		feet="Duelist's boots +1"
    })
	
	sets.midcast['Paralyze'] =  
    {
        main="Chatoyant staff",
		sub="Ice grip",
		ammo="Sturm's report",
		ear1="Star earring", 
        ear2="Celestial earring",
		body="Warlock's tabard", 
        hands="Bricta's cuffs",
		ring1="Karka ring",
		ring2="Omega ring",
        back="Altruistic cape", 
        waist="Witch sash", 
        legs="Mahatma slops", 
        feet="Avocat pigaches"
    }
	
	sets.midcast['Paralyze'].Potency = set_combine(
    sets.midcast['Paralyze'], 
    {
        main="Chatoyant staff",
		sub="Bugard strap +1",
		body="Crimson scale mail",
		ear1="Star earring", 
        ear2="Celestial earring",
        ring1="Karka ring",
		ring2="Tamas ring",
		back="Prism cape",
		feet="Duelist's boots +1"
    })
	
	sets.midcast['Paralyze II'] = 
    {
        main="Chatoyant staff",
		sub="Ice grip",
		ammo="Sturm's report",
		ear1="Star earring", 
        ear2="Celestial earring",
		body="Warlock's tabard", 
        hands="Bricta's cuffs",
		ring1="Karka ring",
		ring2="Omega ring",
        back="Altruistic cape", 
        waist="Witch sash", 
        legs="Mahatma slops", 
        feet="Avocat pigaches"
    }
	
	sets.midcast['Paralyze II'].Potency = set_combine(
    sets.midcast['Paralyze II'], 
    {
        main="Chatoyant staff",
		sub="Bugard strap +1",
		body="Crimson scale mail",
		ear1="Star earring", 
        ear2="Celestial earring",
        ring1="Karka ring",
		ring2="Tamas ring",
		back="Prism cape",
		feet="Duelist's boots +1"
    })
	
	sets.midcast['Silence'] = set_combine(
    sets.midcast['Enfeebling Magic'], 
    {
        sub="Wind grip",
		ear1="Star earring", 
        ear2="Celestial earring",
        ring1="Karka ring"
    })
	
	sets.midcast['Dia III'] = set_combine(
    sets.midcast['Enfeebling Magic'], 
    {
        ear1="Star earring", 
        ear2="Celestial earring", 
        hands="Bricta's cuffs", 
        ring1="Karka ring", 
        feet="Avocat pigaches"
    })
	
	sets.midcast['Elemental Magic'] = 
    {
        main="Chatoyant staff",
		sub="Bugard strap +1",
		ammo="Phantom tathlum",
        head="Warlock's chapeau +1", 
        neck="Lemegeton medallion +1", 
        ear1="Moldavite earring", 
        ear2="Morion earring",
        body="Crimson scale mail", 
        hands="Genie gages", 
        ring1="Tamas ring", 
        ring2="Omega ring", 
        back="Prism cape", 
        waist="Witch sash", 
        legs="Duelist's tights +1", 
        feet="Numerist pumps"
    }
	
	sets.midcast['Healing Magic'] = 
    {
        main="Chatoyant staff",
		sub="Bugard strap +1",
		ammo="Bibiki seashell",
		head="Duelist's chapeau +1", 
        neck="Healing torque", 
        ear1="Roundel earring",
        ear2="Magnetic earring", 
        body="Duelist's tabard +1", 
        hands="Devotee's mitts +1", 
        ring1="Tamas ring", 
        ring2="Karka ring", 
        back="Altruistic cape", 
        waist="Witch sash", 
        legs="Warlock's tights", 
        feet="Duelist's boots +1"
    }
	
	sets.midcast['Raise'] = set_combine(
    sets.midcast['Healing Magic'],
	{
		main="Seveneyes",
		sub="Sentinel Shield",
		hands="Dusk gloves",
		body="Duelist's tabard +1",
		waist="Velocious belt",
		feet="Dusk ledelsens +1"
	})
	
	sets.midcast['Reraise'] = set_combine(
    sets.midcast['Healing Magic'],
	{
		main="Seveneyes",
		sub="Sentinel Shield",
		hands="Dusk gloves",
		body="Duelist's tabard +1",
		waist="Velocious belt",
		feet="Dusk ledelsens +1"
	})
	
	sets.midcast['Enhancing Magic'] =
	{
		main="Seveneyes",
		sub="Muse tariqah",
		ammo="Fenrir's stone",
		head="Walahra turban",
		neck="Promise badge",
		ear1="Magnetic earring",
		ear2="Celestial earring",
		body="Crimson scale mail",
		hands="Duelist's gloves +1",
		ring1="Tamas ring", 
		ring2="Karka ring", 
		back="Prism cape",
		waist="Velocious belt",
		legs="Warlock's tights",
		feet="Duelist's boots +1"
	}
	
	sets.midcast['Haste'] = set_combine(
    sets.midcast['Enhancing Magic'],
	{
		sub="Sentinel Shield",
		hands="Dusk gloves",
		body="Duelist's tabard +1",
		waist="Velocious belt",
		feet="Dusk ledelsens +1"
	})
	
	sets.midcast['Refresh'] = set_combine(
    sets.midcast['Enhancing Magic'],
	{
		sub="Sentinel Shield",
		hands="Dusk gloves",
		body="Duelist's tabard +1",
		waist="Velocious belt",
		feet="Dusk ledelsens +1"
	})
	
	sets.midcast['Stoneskin'] = set_combine(
    sets.midcast['Enhancing Magic'],
	{
		sub="Sentinel Shield",
		neck="Stone gorget",
		hands="Dusk gloves",
		body="Duelist's tabard +1",
		waist="Velocious belt",
		feet="Dusk ledelsens +1"
	})
	
	sets.midcast['Poisona'] = set_combine(
    sets.midcast['Enhancing Magic'],
	{
		sub="Sentinel Shield",
		hands="Dusk gloves",
		body="Duelist's tabard +1",
		waist="Velocious belt",
		feet="Dusk ledelsens +1"
	})
	
	sets.midcast['Paralyna'] = set_combine(
    sets.midcast['Enhancing Magic'],
	{
		sub="Sentinel Shield",
		hands="Dusk gloves",
		body="Duelist's tabard +1",
		waist="Velocious belt",
		feet="Dusk ledelsens +1"
	})
	
	sets.midcast['Blindna'] = set_combine(
    sets.midcast['Enhancing Magic'],
	{
		sub="Sentinel Shield",
		hands="Dusk gloves",
		body="Duelist's tabard +1",
		waist="Velocious belt",
		feet="Dusk ledelsens +1"
	})
	
	sets.midcast['Silena'] = set_combine(
    sets.midcast['Enhancing Magic'],
	{
		sub="Sentinel Shield",
		hands="Dusk gloves",
		body="Duelist's tabard +1",
		waist="Velocious belt",
		feet="Dusk ledelsens +1"
	})
	
	sets.midcast['Cursna'] = set_combine(
    sets.midcast['Enhancing Magic'],
	{
		sub="Sentinel Shield",
		hands="Dusk gloves",
		body="Duelist's tabard +1",
		waist="Velocious belt",
		feet="Dusk ledelsens +1"
	})
	
	sets.midcast['Erase'] = set_combine(
    sets.midcast['Enhancing Magic'],
	{
		sub="Sentinel Shield",
		hands="Dusk gloves",
		body="Duelist's tabard +1",
		waist="Velocious belt",
		feet="Dusk ledelsens +1"
	})
	
	sets.midcast['Viruna'] = set_combine(
    sets.midcast['Enhancing Magic'],
	{
		sub="Sentinel Shield",
		hands="Dusk gloves",
		body="Duelist's tabard +1",
		waist="Velocious belt",
		feet="Dusk ledelsens +1"
	})
	
	sets.midcast['Dark Magic'] =
	{
		main="Chatoyant staff",
		sub="Bugard strap +1",
		ammo="Sturm's report",
		head="Morrigan's coronal",
		neck="Dark torque",
		ear1="Abyssal earring",
		ear2="Loquacious earring",
		body="Nashira manteel",
		hands="Crimson finger gauntlets",
		ring1="Omega ring",
		ring2="Tamas ring",
		back="Prism cape",
		waist="Witch sash",
		legs="Mahatma slops",
		feet="River gaiters"
	}
	
	sets.obi = 
	{	
		Fire = {waist="Karin Obi"},
		Earth = {waist="Dorin Obi"},
		Water = {waist="Suirin Obi"},
		Wind = {waist="Furin Obi"},
		Ice = {waist="Hyorin Obi"},
		Lightning = {waist="Rairin Obi"},
		Light = {waist="Korin Obi"},
		Dark = {waist="Anrin Obi"}
	}
	
	sets.idle = 
    {
        main="Terra's staff", 
        sub="Bugard leather strap +1", 
        ammo="Bibiki seashell",
		head="Duelist's chapeau +1", 
        neck="Orochi nodowa", 
        ear1="Merman's earring", 
        ear2="Merman's earring",
        body="Dalmatica", 
        hands="Darksteel mittens +1", 
        ring1="Defending ring", 
        ring2="Shadow ring", 
        back="Shadow mantle", 
        waist="Velocious belt", 
        legs="Crimson cuisses", 
        feet="Darksteel leggings +1"
    }

	sets.idle.PDT =
	{
	    main="Terra's staff", 
        sub="Bugard leather strap +1", 
        ammo="Bibiki seashell",
		head="Darksteel cap +1", 
        neck="Orochi nodowa", 
        ear1="Merman's earring", 
        ear2="Merman's earring",
        body="Darksteel harness +1", 
        hands="Darksteel mittens +1", 
        ring1="Defending ring", 
        ring2="Shadow ring", 
        back="Shadow mantle", 
        waist="Velocious belt", 
        legs="Darksteel subligar +1", 
        feet="Darksteel leggings +1"
	
	}
	sets.resting = 
    {
        main="Chatoyant staff", 
        sub="Bugard leather strap +1", 
        ammo="Bibiki seashell", 
        head="Mirror tiara", 
        neck="Beak necklace +1", 
        ear1="Magnetic earring", 
        ear2="Loquacious earring",
        body="Errant houppelande", 
        hands="Genie gages", 
        ring1="Star ring", 
        ring2="Star ring", 
        back="Shadow mantle", 
        waist="Duelist's belt", 
        legs="Zenith slacks", 
        feet="Avocat pigaches"
    }
	
	sets.engaged['Haste'] = 
    {
		main="Joyeuse", 
		sub="Sentinel shield", 
		ammo="Astrolabe",
		head="Walahra turban", 
        neck="Peacock amulet", 
        ear1="Brutal earring", 
        ear2="Suppanomimi", 
        body="Nashira manteel", 
        hands="Dusk gloves", 
        ring1="Defending ring", 
        ring2="Toreador's ring",
        back="Shadow mantle", 
        waist="Velocious belt", 
        legs="Hydra brais", 
        feet="Dusk ledelsens +1"
    }
	
	sets.engaged['ACC'] = 
    {
        main="Joyeuse", 
		sub="Genbu's shield", 
		ammo="Astrolabe",
		head="Walahra turban", 
        neck="Peacock amulet", 
        ear1="Brutal earring", 
        ear2="Suppanomimi", 
        body="Scorpion harness +1", 
        hands="Dusk gloves", 
        ring1="Lava's ring", 
        ring2="Kusha's ring",
        back="Shadow mantle", 
        waist="Velocious belt", 
        legs="Hydra brais", 
        feet="Dusk ledelsens +1"
    }
	
	sets.engaged['DW'] = 
    {
        main="Excalibur", 
		sub="Joyeuse", 
		ammo="Astrolabe",
		head="Walahra turban", 
        neck="Peacock amulet", 
        ear1="Brutal earring", 
        ear2="Suppanomimi",
        body="Nashira manteel", 
        hands="Dusk gloves", 
        ring1="Defending ring",
        ring2="Toreador's ring", 
		back="Shadow mantle", 
        waist="Velocious belt", 
        legs="Hydra brais", 
        feet="Dusk ledelsens +1"
    }
	
	sets.defense['Tank'] = 
    {
        main="Excalibur", 
        sub="Genbu's shield", 
        ammo="Bibiki seashell", 
        head="Walahra turban", 
        neck="Peacock amulet", 
        ear1="Brutal earring", 
        ear2="Cassie earring", 
        body="Dalmatica", 
        hands="Dusk gloves", 
        ring1="Defending ring", 
        ring2="Shadow ring",
        back="Shadow mantle", 
        waist="Velocious belt", 
        legs="Crimson cuisses", 
        feet="Dusk ledelsens +1"
    }
	
	sets.defense['Breath'] = 
    {
        main="Excalibur", 
        sub="Genbu's shield", 
        ammo="Bibiki seashell", 
        head="Walahra turban", 
        neck="Peacock amulet", 
        ear1="Brutal earring", 
        ear2="Cassie earring", 
        body="Crimson scale mail", 
        hands="Dusk gloves", 
        ring1="Defending ring", 
        ring2="Shadow ring",
        back="Shadow mantle", 
        waist="Velocious belt", 
        legs="Crimson cuisses", 
        feet="Dusk ledelsens +1"
	}
	
	sets.defense['PDT'] = 
    {
        main="Excalibur", 
        sub="Genbu's shield", 
        ammo="Bibiki seashell", 
        head="Darksteel cap +1", 
        neck="Peacock amulet", 
        ear1="Brutal earring", 
        ear2="Cassie earring", 
        body="Darksteel harness +1", 
        hands="Darksteel mittens +1", 
        ring1="Defending ring", 
        ring2="Shadow ring",
        back="Shadow mantle", 
        waist="Velocious belt", 
        legs="Darksteel subligar +1", 
        feet="Darksteel leggings +1"
    }
	
function job_state_change(stateField, newValue, oldValue)
	if stateField == 'Casting Mode' then
	if state.CastingMode.value == 'TP' then
	disable('main','sub','range') else
	enable('main', 'sub','range')
  end
 end
end

function job_post_midcast(spell,action,spellMap,eventArgs)

    if spell.skill == 'Elemental Magic' or spell.skill == 'Dark Magic' or spell.skill == 'Healing Magic' then
        if spell.element == world.weather_element or spell.element == world.day_element then
            equip(sets.obi[spell.element])
        end
    end
end
end