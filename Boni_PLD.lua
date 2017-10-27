function get_sets()
	mote_include_version = 2
	include('Mote-Include.lua')
end

function user_setup()
	state.OffenseMode:options('TP', 'Haste', 'DW')
	state.PhysicalDefenseMode:options('None','Medium', 'Heavy', 'Heavy no jelly')
	state.MagicalDefenseMode:options('None','Breath', 'Breath-Ice')
	state.IdleMode:options('Normal')

	send_command('bind f9 gs c cycle OffenseMode')
	send_command('bind ^f9 gs c cycle IdleMode')
	send_command('bind f10 gs c set DefenseMode Physical')
	send_command('bind ^f10 gs c cycle PhysicalDefenseMode')
	send_command('bind f11 gs c set DefenseMode Magical')
	send_command('bind ^f11 gs c cycle MagicalDefenseMode')
 end	

function user_unload()
	send_command('unbind f9')
	send_command('unbind ^f9')
	send_command('unbind f10')
	send_command('unbind ^f10')
	send_command('unbind f11')
	send_command('unbind ^f11')
end

function init_gear_sets()
   --Idle Sets--
   sets.idle= 
   {
		ammo="Bibiki Seashell",
		neck="Parade Gorget",
		ear1="Harmonius earring",
		ear2="Ethereal earring",
		body="Royal cloak",
		hands="Koenig handschuhs",
		ring1="Defending ring",
		ring2="Sattva ring",
		back="Boxer's mantle",
		waist="Marid belt",
		legs="Crimson cuisses",
		feet="Gallant leggings +1"
	}
   
   -- Precast Sets--	
	sets.precast.FC = 
	{
		ear1="Loquacious earring"
	}

	sets.precast.FC['Cure II'] =
	{
		head="Hydra salade",
		neck="Parade gorget",
		ear1="Loquacious earring",
		ear2="Astral earring"	
	}
	
	sets.precast.FC['Cure III'] =
	{
		head="Hydra salade",
		neck="Parade gorget",
		ear1="Loquacious earring",
		ear2="Astral earring",
		body="Haubergeon +1",
		hands="Hydra moufles",
		ring1="Defending ring",
		ring2="Ether ring",
		back="Sattva ring",
		waist="Marid belt",
		legs="Hydra brayettes"
	}
		
	sets.precast.FC['Cure IV'] =
	{
		head="Hydra salade",
		neck="Parade gorget",
		ear1="Loquacious earring",
		ear2="Astral earring",
		body="Haubergeon +1",
		hands="Hydra moufles",
		ring1="Defending ring",
		ring2="Ether ring",
		back="Settler's cape",
		waist="Warwolf belt",
		legs="Hydra brayettes",
		feet="Hydra sollerets"
	}
	
	sets.precast.JA =
	{
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Harmonius earring",
		ear2="Ethereal earring",
		body="Valor surcoat +1",
		hands="Hydra moufles",
		ring1="Hercules' ring",
		ring2="Sattva ring",
		back="Cerberus mantle +1",
		waist="Warwolf belt",
		legs="Hydra brayettes",
		feet="Hydra sollerets"
	}
	
	sets.precast.JA['Shield Bash'] =
	{
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Knightly earring",
		ear2="Ethereal earring",
		body="Valor surcoat +1",
		hands="Valor gauntlets +1",
		ring1="Hercules' ring",
		ring2="Sattva ring",
		back="Cerberus mantle +1",
		waist="Warwolf belt",
		legs="Hydra brayettes",
		feet="Hydra sollerets"
	}
	
	sets.precast.JA['Rampart'] =
	{
		head="Valor coronet",
		neck="Ritter gorget",
		ear1="Harmonius earring",
		ear2="Ethereal earring",
		body="Valor surcoat +1",
		hands="Hydra moufles",
		ring1="Hercules' ring",
		ring2="Sattva ring",
		back="Cerberus mantle +1",
		waist="Warwolf belt",
		legs="Hydra brayettes",
		feet="Hydra sollerets"
	}
	
	sets.precast.JA['Sentinel'] =
	{
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Harmonius earring",
		ear2="Ethereal earring",
		body="Valor surcoat +1",
		hands="Hydra moufles",
		ring1="Hercules' ring",
		ring2="Sattva ring",
		back="Cerberus mantle +1",
		waist="Warwolf belt",
		legs="Hydra brayettes",
		feet="Valor leggings"
	}
	
	sets.precast.JA['Holy Circle'] =
	{
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Harmonius earring",
		ear2="Ethereal earring",
		body="Valor surcoat +1",
		hands="Hydra moufles",
		ring1="Hercules' ring",
		ring2="Sattva ring",
		back="Cerberus mantle +1",
		waist="Warwolf belt",
		legs="Hydra brayettes",
		feet="Gallant leggings +1"
	}
	
	sets.precast.JA['Curing Waltz'] =
	{
		head="Koenig schaller",
		body="Koenig cuirass",
		hands="Koenig handschuhs",
		legs="Koenig diechlings",
		feet="Koenig schuhs"
	}
	
	sets.precast.JA['Curing Waltz II'] =
	{
		head="Koenig schaller",
		body="Koenig cuirass",
		hands="Koenig handschuhs",
		legs="Koenig diechlings",
		feet="Koenig schuhs"
	}
	
	sets.precast.WS =
	{
        head="Hecatomb cap", 
        neck="Ancient torque", 
		ear1="Fowling earring", 
        ear2="Harmonius earring",
        body="Hecatomb harness", 
        hands="Hecatomb mittens", 
        ring1="Crimson ring", 
        ring2="Ruby ring", 
        back="Cerberus mantle +1", 
        waist="Potent belt", 
        legs="Aurum cuisses", 
        feet="Hecatomb leggings"
    }
	sets.precast.WS['Knights of Round'] =
	{
		head="Hecatomb cap", 
        neck="Flame gorget", 
        ear1="Fowling earring", 
        ear2="Harmonius earring",
        body="Hecatomb harness", 
        hands="Hecatomb mittens", 
        ring1="Crimson ring", 
        ring2="Ruby ring", 
        back="Cerberus mantle +1", 
        waist="Potent belt", 
        legs="Aurum cuisses", 
        feet="Hecatomb leggings"
    }
	
	sets.precast.WS['Red Lotus Blade'] =
	{
		head="Hecatomb cap", 
        neck="Flame gorget", 
        ear1="Fowling earring", 
        ear2="Harmonius earring",
        body="Hecatomb harness", 
        hands="Hecatomb mittens", 
        ring1="Crimson ring", 
        ring2="Ruby ring", 
        back="Cerberus mantle +1", 
        waist="Potent belt", 
        legs="Aurum cuisses", 
        feet="Hecatomb leggings"
    }
	
	-- Midcast Sets--
	sets.midcast['Utsusemi'] = 
    {
        ammo="Bibiki Seashell",
		head="Walahra turban", 
        neck="Ritter gorget",
		ear1="Knightly earring",
		ear2="Ethereal earring",
		body="Crimson scale mail",
		hands="Dusk gloves +1", 
        ring1="Defending ring",
		ring2="Blitz ring",
		back="Boxer's mantle",
		waist="Velocious belt",
		legs="Valor breeches +1",
		feet="Dusk ledelsens"
	}
	
	sets.midcast['Reprisal'] = set_combine(
    sets.midcast['Utsusemi'])
	
	sets.midcast['Flash'] =
	{
		ammo="Bibiki seashell",
		head="Walahra turban",
		neck="Ritter gorget",
		ear1="Knightly earring",
		ear2="Ethereal earring",
		body="Valor surcoat +1",
		hands="Homam manopolas",
		ring1="Defending ring",
		ring2="Blitz ring",
		back="Cerberus mantle +1",
		waist="Velocious belt",
		legs="Hydra brayettes",
		feet="Dusk ledelsens"
	}
	
	sets.midcast['Cure II'] = 
	{
		ammo="Bibiki Seashell",
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Hospitaler earring",
		ear2="Ethereal earring",
		body="Valor surcoat +1",
		hands="Homam manopolas",
		ring1="Bomb queen ring",
		ring2="Sattva ring",
		back="Cerberus mantle +1",
		waist="Warwolf belt",
		legs="Valor breeches +1",
		feet="Valor leggings"
	}
	
	sets.midcast['Cure III'] = 
	{
		ammo="Bibiki Seashell",
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Hospitaler earring",
		ear2="Ethereal earring",
		body="Valor surcoat +1",
		hands="Homam manopolas",
		ring1="Bomb queen ring",
		ring2="Sattva ring",
		back="Cerberus mantle +1",
		waist="Warwolf belt",
		legs="Valor breeches +1",
		feet="Valor leggings"
	}
	
	sets.midcast['Cure IV'] = 
	{
		ammo="Bibiki Seashell",
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Hospitaler earring",
		ear2="Ethereal earring",
		body="Valor surcoat +1",
		hands="Homam manopolas",
		ring1="Bomb queen ring",
		ring2="Sattva ring",
		back="Cerberus mantle +1",
		waist="Warwolf belt",
		legs="Valor breeches +1",
		feet="Valor leggings"
	}
	
	sets.engaged['TP'] =
	{
		ammo="Tiphia sting",
		head="Homam zucchetto",
		neck="Ancient torque",
		ear1="Assault earring",
		ear2="Ethereal earring",
		body="Haubergeon +1",
		hands="Homam manopolas",
		ring1="Defending ring",
		ring2="Toreador's ring",
		back="Cerberus mantle +1",
		waist="Velocious belt",
		legs="Aurum cuisses",
		feet="Aurum sabatons"
	}

	sets.engaged['Haste'] =
	{
		ammo="Tiphia sting",
		head="Walahra turban",
		neck="Ancient torque",
		ear1="Assault earring",
		ear2="Ethereal earring",
		body="Haubergeon +1",
		hands="Dusk gloves +1",
		ring1="Lava's ring",
		ring2="Kusha's ring",
		back="Cerberus mantle +1",
		waist="Velocious belt",
		legs="Aurum cuisses",
		feet="Aurum sabatons"
	}
	
	sets.engaged['DW'] =
	{
		ammo="Tiphia sting",
		head="Walahra turban",
		neck="Parade gorget",
		ear1="Assault earring",
		ear2="Ethereal earring",
		body="Haubergeon +1",
		hands="Dusk gloves +1",
		ring1="Defending ring",
		ring2="Toreador's ring",
		back="Cerberus mantle +1",
		waist="Velocious belt",
		legs="Aurum cuisses",
		feet="Aurum sabatons"
	}
	
	sets.defense['Medium'] = 
	{
		ammo="Bibiki seashell",
		head="Koenig schaller",
		neck="Ritter gorget",
		ear1="Knight's earring",
		ear2="Ethereal earring",
		body="Valhalla breastplate",
		hands="Homam manopolas",
		ring1="Defending ring",
		ring2="Jelly ring",
		back="Boxer's mantle",
		waist="Velocious belt",
		legs="Koenig diechlings",
		feet="Gallant leggings +1"
	}
	
	sets.defense['Heavy'] = set_combine(
    sets.defense['Medium'],
	{
		head="Valhalla helm",
		hands="Koenig handschuhs"
	})
	
	sets.defense['Heavy no jelly'] = set_combine(
    sets.defense['Medium'],
	{
		head="Valhalla helm",
		hands="Koenig handschuhs",
		ring2="Sattva ring"
	})
	
	sets.defense['Breath'] = set_combine(
    sets.defense['Medium'],
	{
		head="Valhalla helm",
		body="Crimson scale mail", 
		ring2="Sattva ring"
	})
	
	sets.defense['Breath-Ice'] = set_combine(
    sets.defense['Breath'],
	{
		legs="Koenig diechlings",
		back="Boxer's mantle",
		ring2="Sattva ring"
	})
end