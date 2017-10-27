function get_sets()
	mote_include_version = 2
	include('Mote-Include.lua')
end

function user_setup()
	state.CastingMode:options('Normal', 'MB', 'Skill', 'MaxSkill', 'TH')
	state.IdleMode:options('Normal', 'PDT')

	send_command('bind f9 gs c cycle CastingMode')
	send_command('bind f10 gs c cycle IdleMode')
end		

function user_unload()
	send_command('unbind f9')
	send_command('unbind f10')
end

function init_gear_sets()

   --Precast sets--
	sets.precast.FC = 
	{
		ear1="Loquacious earring",
		feet="Rostrum pumps"
	}
	
	sets.precast.WS =
	{
	}
	
   --Midcast sets--
	sets.midcast['Elemental Magic'] = 
	{
		main="Claustrum",
		sub="Bugard strap +1",
		ammo="Sweet sachet",
		head="Morrigan's coronal",
		neck="Lemegeton medallion +1",
		ear1="Novio earring",
		ear2="Moldavite earring",
		body="Genie weskit",
		hands="Zenith mitts +1",
		ring1="Tamas ring",
		ring2="Snow ring",
		back="Prism cape",
		legs="Mahatma slops",
		waist="Sorcerer's belt",
		feet="Sorcerer's sabots +1"
	}
	
	sets.midcast['Elemental Magic'].MB = set_combine(
	sets.midcast['Elemental Magic'],
	{
		ear2="Static earring",
		hands="Sorcerer's gloves +1"
	})
	
	sets.midcast['Elemental Magic'].Skill = set_combine(
	sets.midcast['Elemental Magic'],
	{
		hands="Wizard's gloves +1"
	})
	
	sets.midcast['Elemental Magic'].MaxSkill = set_combine(
	sets.midcast['Elemental Magic'],
	{
		head="Sorcerer's petasos +1",
		hands="Wizard's gloves +1",
		back="Merciful cape",
		feet="Numerist pumps"
	})
	
	sets.midcast['Elemental Magic'].TH = set_combine(
	sets.midcast['Elemental Magic'],
	{
		hands="Wizard's gloves +1"
	})
	
	sets.midcast['Enfeebling Magic'] =
	{
		main="Chatoyant staff",
		sub="Bugard strap +1",
		ammo="Sweet sachet",
		head="Igqira tiara",
		neck="Lemegeton medallion +1",
		ear1="Abyssal earring",
		ear2="Morion earring",
		body="Wizard's coat +1",
		hands="Oracle's gloves",
		ring1="Tamas ring",
		ring2="Snow ring",
		back="Prism cape",
		waist="Penitent's rope",
		legs="Igqira lapas",
		feet="Avocat pigaches"
	}
	
	sets.midcast['Dark Magic'] = 
	{
		main="Chatoyant staff",
		sub="Bugard strap +1",
		ammo="Sweet sachet",
		head="Morrigan's coronal",
		neck="Dark torque",
		ear1="Abyssal earring",
		ear2="Morion earring",
		body="Oracle's robe",
		hands="Sorcerer's gloves +1",
		ring1="Tamas ring",
		ring2="Snow ring",
		back="Merciful cape",
		waist="Sorcerer's belt",
		legs="Wizard's tonban",
		feet="Igqira huaraches"
	}
	
	sets.midcast['Enhancing Magic'] =
	{
		main="Seveneyes",
		sub="Genbu's shield",
		ammo="Bibiki seashell",
		head="Morrigan's coronal",
		neck="Promise badge",
		ear1="Star earring",
		ear2="Star earring",
		body="Errant houppelande",
		hands="Devotee's mitts",
		ring1="Tamas ring",
		ring2="Aqua ring",
		back="Prism cape",
		waist="Penitent's rope",
		legs="Mahatma slops",
		feet="Wizard's sabots +1"
		
	}
	
	sets.midcast['Healing Magic'] =
	{
		main="Chatoyant staff",
		sub="Bugard strap +1",
		ammo="Bibiki seashell",
		head="Walahra turban",
		neck="Promise badge",
		ear1="Star earring",
		ear2="Star earring",
		body="Errant houppelande",
		hands="Devotee's mitts",
		ring1="Tamas ring",
		ring2="Aqua ring",
		back="Prism cape",
		waist="Swift belt",
		legs="Mahatma slops",
		feet="Wizard's sabots +1"
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
		main="Claustrum",
		sub="Bugard strap +1",
		ammo="Bibiki seashell",
		head="Sorcerer's petasos +1",
		neck="Orochi nodowa",
		ear1="Merman's earring",
		ear2="Merman's earring",
		body="Sorcerer's coat +1",
		hands="Oracle's gloves",
		ring1="Merman's ring",
		ring2="Merman's ring",
		back="Hexerei cape",
		waist="Sorcerer's belt",
		legs="Sorcerer's tonban +1",
		feet="Herald's gaiters"
	}
	
	sets.resting =
	{
		main="Claustrum",
		sub="Bugard strap +1",
		ammo="Bibiki seashell",
		head="Oracle's cap",
		neck="Beak necklace +1",
		ear1="Merman's earring",
		ear2="Merman's earring",
		body="Oracle's robe",
		hands="Oracle's gloves",
		ring1="Merman's ring",
		ring2="Merman's ring",
		back="Hexerei cape",
		waist="Mohbwa sash +1",
		legs="Oracle's braconi",
		feet="Avocat pigaches"
	}

function job_post_midcast(spell,action,spellMap,eventArgs)

    if spell.skill == 'Elemental Magic' or spell.skill == 'Dark Magic' then
        if spell.element == world.weather_element and spell.element == world.day_element then
            equip(set_combine(sets.obi[spell.element],{main="Chatoyant staff",sub="Bugard strap +1",legs="Sorcerer's tonban +1"}))
        elseif spell.element == world.day_element then
            equip(set_combine(sets.obi[spell.element],{main="Claustrum",sub="Bugard strap +1",legs="Sorcerer's tonban +1"}))
        elseif spell.element == world.weather_element then
            equip(set_combine(sets.obi[spell.element],{main="Chatoyant staff",sub="Bugard strap +1"}))
        end
    end
    if state.CastingMode.value == 'TH' and spell.skill == 'Elemental Magic' then
        equip({main="Lotus Katana",sub="Bugard strap +1"})
    end
	if state.CastingMode.value == 'MB' and spell.skill == 'Elemental Magic' then
        equip({main="Claustrum",sub="Bugard strap +1"})
    end
	end
end