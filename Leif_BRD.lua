function get_sets()
	mote_include_version = 2
	include('Mote-Include.lua')
end

function user_setup()
	state.OffenseMode:options('TP', 'DW')
	state.CastingMode:options('Normal', 'TP')
	state.IdleMode:options('Normal', 'TP')
	
	send_command('bind f8 gs c cycle CastingMode')
	send_command('bind f9 gs c cycle OffenseMode')
	send_command('bind f11 gs c cycle IdleMode')
end	

function init_gear_sets()

	-- Precast Sets --
	sets.precast.FC['Normal'] = 
	{
		head="Zenith crown",
		hands="Zenith mitts +1",
		body="Sha'ir manteel",
		waist="Penitent's rope",
		legs="Zenith slacks",
		feet="Rostrum pumps",
		ear1="Loquacious earring",
		ear2="Novia earring",
		ring1="Vivian ring",
		ring2="Minstrel's ring"
	}
	
	sets.precast.FC['TP'] =
	{
		body="Sha'ir manteel"
	}
	
	sets.precast.WS =
	{
		head="Hecatomb cap",
		neck="Piper's torque",
		ear1="Melody earring +1",
		ear2="Pixie earring",
		body="Bard's justaucorps +1",
		hands="Hecatomb mittens",
		ring1="Veela ring",
		ring2="Light ring",
		back="Bard's cape",
		waist="Corsette +1",
		legs="Hecatomb subligar",
		feet="Hecatomb leggings"
	}
	
		-- Midcast Sets
	sets.midcast['Utsusemi'] = 
    {
		head="Walahra turban", 
        body="Sha'ir manteel",
		hands="Dusk gloves", 
        back="Bard's cape",
		waist="Velocious Belt",
		legs="Byakko's haidate",
		feet="Dusk ledelsens" 
    }
	
	sets.midcast['Singing'] =
	{
		range="Gjallarhorn",
		head="Bard's roundlet +1",
		neck="Piper's torque",
		ear1="Melody earring +1",
		ear2="Novia earring",
		body="Kirin's osode",
		hands="Choral cuffs +1",
		ring1="Veela ring",
		ring2="Light ring",
		back="Astute cape",
		waist="Corsette +1",
		legs="Bard's cannions +1",
		feet="Zenith pumps"
	}
	
	sets.midcast['March'] = set_combine(
	sets.midcast['Singing'], 
	{
		head="Marduk's tiara",
		neck="Wind torque",
		body="Minstrel's coat",
		ear1="Musical earring",
		ring1="Nereid ring",
		ring2="Nereid ring",
		legs="Choral cannions +1",
		feet="Oracle's pigaches"
	})
	
	sets.midcast['Minuet'] = set_combine(
	sets.midcast['Singing'], 
	{
		head="Marduk's tiara",
		neck="Wind torque",
		body="Minstrel's coat",
		ear1="Musical earring",
		ring1="Nereid ring",
		ring2="Nereid ring",
		legs="Choral cannions +1",
		feet="Oracle's pigaches"
	})
	
	sets.midcast['Madrigal'] = set_combine(
	sets.midcast['Singing'], 
	{
		head="Marduk's tiara",
		neck="Wind torque",
		body="Minstrel's coat",
		ear1="Musical earring",
		ring1="Nereid ring",
		ring2="Nereid ring",
		legs="Choral cannions +1",
		feet="Oracle's pigaches"
	})
	
	sets.midcast['Minne'] = set_combine(
	sets.midcast['Singing'], 
	{
		head="Marduk's tiara",
		neck="Wind torque",
		body="Minstrel's coat",
		ear1="Musical earring",
		ring1="Nereid ring",
		ring2="Nereid ring",
		legs="Choral cannions +1",
		feet="Oracle's pigaches"
	})
	
	sets.midcast['Prelude'] = set_combine(
	sets.midcast['Singing'], 
	{
		head="Marduk's tiara",
		neck="Wind torque",
		body="Minstrel's coat",
		ear1="Musical earring",
		ring1="Nereid ring",
		ring2="Nereid ring",
		legs="Choral cannions +1",
		feet="Oracle's pigaches"
	})
	
	sets.midcast['Mambo'] = set_combine(
	sets.midcast['Singing'], 
	{
		head="Marduk's tiara",
		neck="Wind torque",
		body="Minstrel's coat",
		ear1="Musical earring",
		ring1="Nereid ring",
		ring2="Nereid ring",
		legs="Choral cannions +1",
		feet="Oracle's pigaches"
	})
	
	sets.midcast['Etude'] = set_combine(
	sets.midcast['Singing'], 
	{
		head="Marduk's tiara",
		neck="Wind torque",
		body="Minstrel's coat",
		ear1="Musical earring",
		ring1="Nereid ring",
		ring2="Nereid ring",
		legs="Choral cannions +1",
		feet="Oracle's pigaches"
	})
	
	sets.midcast['Carol'] = set_combine(
	sets.midcast['Singing'], 
	{
		head="Marduk's tiara",
		neck="Wind torque",
		body="Minstrel's coat",
		ear1="Musical earring",
		ring1="Nereid ring",
		ring2="Nereid ring",
		legs="Choral cannions +1",
		feet="Oracle's pigaches"
	})
	
	sets.midcast['Ballad'] = set_combine(
	sets.midcast['Singing'], 
	{
		hands="Sha'ir gages"
	})
	
	sets.midcast['Magic Finale'] = set_combine(
	sets.midcast['Singing'],
	{
		hands="Sha'ir gages"
	})
	
	sets.midcast['Lullaby'] = set_combine(
	sets.midcast['Singing'],
	{
		hands="Sha'ir gages"
	})
	
	sets.midcast['Healing Magic'] = 
	{
		range="Angel lyre",
		head="Choral roundlet",
		neck="Promise badge",
		ear1="Star earring",
		ear2="Star earring",
		body="Kirin's osode",
		hands="Devotee's mitts",
		ring1="Tamas ring",
		ring2="Aqua ring",
		back="Prism cape",
		waist="Velocious belt",
		legs="Bard's cannions +1",
		feet="Suzaku's sune-ate"
	}
	
	sets.midcast['Enhancing Magic'] = 
	{
		range="Angel lyre",
		head="Choral roundlet",
		neck="Promise badge",
		ear1="Star earring",
		ear2="Star earring",
		body="Kirin's osode",
		hands="Devotee's mitts",
		ring1="Tamas ring",
		ring2="Aqua ring",
		back="Prism cape",
		waist="Penitent's rope",
		legs="Bard's cannions +1",
		feet="Suzaku's sune-ate"
	}
	
	sets.idle =
	{
		main="Terra's staff", 
        sub="Bugard leather strap +1",
		range="Gjallarhorn",
		head="Genbu's kabuto",
		neck="Orochi nodowa",
		ear1="Merman's earring",
		ear2="Merman's earring",
		body="Dalmatica",
		hands="Choral cuffs +1",
		ring1="Merman's ring",
		ring2="Merman's ring",
		back="Cheviot cape",
		waist="Mohbwa sash +1",
		legs="Bard's cannions +1",
		feet="Suzaku's sune-ate"
	}
	
	sets.idle['TP'] = 
	{
		range="Gjallarhorn",
		head="Genbu's kabuto",
		neck="Orochi nodowa",
		ear1="Merman's earring",
		ear2="Merman's earring",
		body="Dalmatica",
		hands="Sha'ir gages",
		ring1="Merman's ring",
		ring2="Merman's ring",
		back="Cheviot cape",
		waist="Mohbwa sash +1",
		legs="Bard's cannions +1",
		feet="Suzaku's sune-ate"
	}
	
	sets.resting =
	{
		main="Chatoyant staff",
		sub="Bugard leather strap +1",
		ammo="Bibiki seashell", 
		head="Oracle's cap",
		neck="Beak necklace +1",
		body="Oracle's robe",
		hands="Oracle's gloves",
		waist="Mohbwa sash +1",
		legs="Oracle's braconi",
		feet="Avocat pigaches"
	}
	
	sets.engaged['TP'] =
	{
		main="Joyeuse",
		sub="Genbu's shield",
		range="Gjallarhorn",
		head="Walahra turban",
		neck="Peacock amulet",
		ear1="Merman's earring",
		ear2="Merman's earring",
		body="Bard's justaucorps +1",
		hands="Dusk gloves",
		ring1="Jelly ring",
		ring2="Sniper's ring +1",
		back="Bard's cape",
		waist="Velocious belt",
		legs="Byakko's haidate",
		feet="Dusk ledelsens"
	}
	
	sets.engaged['DW'] = 
	{
		main="Blau dolch",
		sub="Joyeuse",
		range="Gjallarhorn",
		head="Walahra turban",
		neck="Peacock amulet",
		ear1="Merman's earring",
		ear2="Merman's earring",
		body="Sha'ir manteel",
		hands="Dusk gloves",
		ring1="Jelly ring",
		ring2="Sniper's ring +1",
		back="Bard's cape",
		waist="Velocious belt",
		legs="Byakko's haidate",
		feet="Dusk ledelsens"
	}
end