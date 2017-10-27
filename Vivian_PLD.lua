function get_sets()
	mote_include_version = 2
	include('Mote-Include.lua')
end

function user_setup()
	state.OffenseMode:options('Haste', 'DW')
	state.PhysicalDefenseMode:options('None', 'PDT', 'PDT2', 'Acc')
	state.MagicalDefenseMode:options('None', 'Breath', 'MDT')
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
		neck="Parade gorget",
		ear1="Merman's earring",
		ear2="Merman's earring",
		body="Vermillion cloak",
		hands="Koenig handschuhs",
		ring1="Defending ring",
		ring2="Shadow ring",
		back="Shadow mantle",
		waist="Marid belt",
		legs="Crimson cuisses",
		feet="Gallant leggings"
	}
   
   -- Precast Sets--	
	sets.precast.FC = 
	{
		ear1="Loquacious earring",
		legs="Homam cosciales"
	}

	sets.precast.FC['Cure II'] =
	{
		head="Hydra salade",
		ear2="Astral earring"
	}
	
	sets.precast.FC['Cure III'] =
	{
		head="Hydra salade",
		ear2="Astral earring",
		hands="Hydra moufles",
		ring1="Defending ring",
		ring2="Vivian ring",
		back="Settler's cape"
	}
		
	sets.precast.FC['Cure IV'] =
	{
		head="Hydra salade",
		ear2="Astral earring",
		hands="Hydra moufles",
		ring1="Vivian ring",
		ring2="Vilma's ring",
		back="Settler's cape"
	}
	
	sets.precast.JA =
	{
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Knight's earring",
		ear2="Ethereal earring",
		body="Iron Ram hauberk",
		hands="Hyda moufles",
		ring1="Hercules' ring",
		ring2="Sattva ring",
		back="Valor cape",
		waist="Warwolf belt",
		legs="Iron Ram hose",
		feet="Iron Ram greaves"
	}
	
	sets.precast.JA['Shield Bash'] =
	{
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Knight's earring",
		ear2="Ethereal earring",
		body="Iron Ram hauberk",
		hands="Valor gauntlets",
		ring1="Hercules' ring",
		ring2="Sattva ring",
		back="Valor cape",
		waist="Warwolf belt",
		legs="Iron Ram hose",
		feet="Iron Ram greaves"
	}
	
	sets.precast.JA['Rampart'] =
	{
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Knight's earring",
		ear2="Ethereal earring",
		body="Iron Ram hauberk",
		hands="Hydra moufles",
		ring1="Hercules' ring",
		ring2="Sattva ring",
		back="Valor cape",
		waist="Warwolf belt",
		legs="Iron Ram hose",
		feet="Iron Ram greaves"
	}
	
	sets.precast.JA['Sentinel'] =
	{
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Knight's earring",
		ear2="Ethereal earring",
		body="Iron Ram hauberk",
		hands="Hydra moufles",
		ring1="Hercules' ring",
		ring2="Sattva ring",
		back="Valor cape",
		waist="Warwolf belt",
		legs="Iron Ram hose",
		feet="Iron Ram greaves"
	}
	
	sets.precast.JA['Holy Circle'] =
	{
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Knight's earring",
		ear2="Ethereal earring",
		body="Iron Ram hauberk",
		hands="Hydra moufles",
		ring1="Hercules' ring",
		ring2="Sattva ring",
		back="Valor cape",
		waist="Warwolf belt",
		feet="Gallant leggings",
		legs="Iron Ram hose",
		feet="Iron Ram greaves"
	}
	
	sets.precast.JA['Cover'] =
	{
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Knight's earring",
		ear2="Ethereal earring",
		body="Valor surcoat",
		hands="Hydra moufles",
		ring1="Hercules' ring",
		ring2="Sattva ring",
		back="Valor cape",
		waist="Warwolf belt",
		feet="Gallant leggings",
		legs="Iron Ram hose",
		feet="Iron Ram greaves"
	}
	
	sets.precast.JA['Chivalry'] =
	{
		head="Hydra salade",
		neck="Promise badge",
		ear1="Celestial earring",
		ear2="Star earring",
		body="Crimson scale mail",
		hands="Devotee's mitts +1",
		ring1="Karka ring",
		ring2="Tamas ring",
		back="Valor cape",
		waist="Warwolf belt",
		legs="Jet seraweels",
		feet="River gaiters"
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
        neck="Harmonia's torque", 
		ear1="Brutal earring", 
        ear2="Fowling earring",
        body="Haubergeon +1", 
        hands="Alkyoneus's bracelets", 
        ring1="Toreador's ring", 
        ring2="Sattva ring", 
        back="Cerberus mantle", 
        waist="Potent belt", 
        legs="Valor breeches", 
        feet="Amir boots"
    }

	
	-- Midcast Sets--
	sets.midcast['Utsusemi'] = 
    {
		head="Walahra turban", 
        neck="Ritter gorget",
		ear1="Knightly earring",
		ear2="Ethereal earring",
		body="Crimson scale mail",
		hands="Homam manopolas", 
        ring1="Defending ring",
		ring2="Blitz ring",
		back="Boxer's mantle",
		waist="Velocious belt",
		legs="Valor breeches",
		feet="Homam gambieras"
	}
	
	sets.midcast['Reprisal'] = set_combine(
    sets.midcast['Utsusemi'])
	
	sets.midcast['Flash'] =
	{
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Knightly earring",
		ear2="Ethereal earring",
		body="Iron Ram hauberk",
		hands="Homam manopolas",
		ring1="Sattva ring",
		ring2="Hercules' ring",
		back="Cerberus mantle",
		waist="Velocious belt",
		legs="Homam cosciales",
		feet="Homam gambieras"
	}
	
	sets.midcast['Cure'] = 
	{
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Hospitaler earring",
		ear2="Ethereal earring",
		body="Iron Ram hauberk",
		hands="Homam manopolas",
		ring1="Sattva ring",
		ring2="Hercules' ring",
		back="Valor cape",
		waist="Trance belt",
		legs="Valor breeches",
		feet="Iron Ram greaves"
	}
	
	
	sets.midcast['Cure II'] = 
	{
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Hospitaler earring",
		ear2="Ethereal earring",
		body="Iron Ram hauberk",
		hands="Homam manopolas",
		ring1="Sattva ring",
		ring2="Hercules' ring",
		back="Valor cape",
		waist="Trance belt",
		legs="Valor breeches",
		feet="Iron Ram greaves"
	}
	
	sets.midcast['Cure III'] = 
	{
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Hospitaler earring",
		ear2="Ethereal earring",
		body="Iron Ram hauberk",
		hands="Homam manopolas",
		ring1="Sattva ring",
		ring2="Hercules' ring",
		back="Valor cape",
		waist="Trance belt",
		legs="Valor breeches",
		feet="Iron Ram greaves"
	}
	
	sets.midcast['Cure IV'] = 
	{
		head="Aegishjalmr",
		neck="Ritter gorget",
		ear1="Hospitaler earring",
		ear2="Ethereal earring",
		body="Iron Ram hauberk",
		hands="Homam manopolas",
		ring1="Sattva ring",
		ring2="Bomb queen ring",
		back="Valor cape",
		waist="Trance belt",
		legs="Valor breeches",
		feet="Iron Ram greaves"
	}

	sets.engaged['Haste'] =
	{
		ammo="Tiphia sting",
		head="Homam zucchetto",
		neck="Chivalrous chain",
		ear1="Brutal earring",
		ear2="Ethereal earring",
		body="Haubergeon +1",
		hands="Homam manopolas",
		ring1="Defending ring",
		ring2="Toreador's ring",
		back="Cerberus mantle",
		waist="Velocious belt",
		legs="Homam cosciales",
		feet="Homam gambieras"
	}
	
	sets.engaged['DW'] =
	{
		ammo="Tiphia sting",
		head="Homam zucchetto",
		neck="Parade gorget",
		ear1="Brutal earring",
		ear2="Ethereal earring",
		body="Haubergeon +1",
		hands="Homam manopolas",
		ring1="Defending ring",
		ring2="Toreador's ring",
		back="Cerberus mantle",
		waist="Velocious belt",
		legs="Homam cosciales",
		feet="Homam gambieras"
	}
	
	sets.defense['PDT'] = 
	{
		ammo="Bibiki seashell",
		head="Koenig schaller",
		neck="Ritter gorget",
		ear1="Knight's earring",
		ear2="Ethereal earring",
		body="Koenig cuirass",
		hands="Koenig handschuhs",
		ring1="Defending ring",
		ring2="Jelly ring",
		back="Shadow mantle",
		waist="Velocious belt",
		legs="Koenig diechlings",
		feet="Gallant leggings"
	}
	
	sets.defense['MDT'] = 
	{
		range="Lamian kaman",
		ammo="Kabura arrow",
		head="Iron Ram sallet",
		neck="Jeweled collar +1",
		ear1="Knight's earring",
		ear2="Ethereal earring",
		body="Iron Ram hauberk",
		hands="Iron Ram dastanas",
		ring1="Defending ring",
		ring2="Shadow ring",
		back="Resentment cape",
		waist="Velocious belt",
		legs="Iron Ram hose",
		feet="Iron Ram greaves"
	}
	
	sets.defense['Acc'] = set_combine(
    sets.defense['PDT'],
	{
		neck="Chivalrous chain",
		hands="Homam manopolas",
		legs="Homam cosciales",
		feet="Homam gambieras",
		ring2="Toreador's ring"
	})

	sets.defense['PDT2'] = set_combine(
    sets.defense['PDT'],
	{
		ring2="Shadow ring"
	})

	sets.defense['Breath'] = set_combine(
    sets.defense['PDT'],
	{
		neck="Jeweled collar +1",
		body="Crimson scale mail"
	})
	
function customize_defense_set(defenseSet)
	if state.DefenseMode.value ~= 'None' then
	if (player.hpp > 85 and player.mpp < 50) then 
		defenseSet = set_combine(defenseSet,{neck="Parade gorget"})
	end
	if (player.hpp < 51) then 
		defenseSet = set_combine(defenseSet,{ring2="Hercules' ring"})
  end
		return defenseSet
	end
  end
 end