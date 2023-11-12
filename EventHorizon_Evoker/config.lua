-- Requires the use of weakauras for empowerment spells and optionally prescience (can be hooked to the eventhorizon frame)
local usemouseover = true

function EventHorizon:InitializeClass()
  self.config.gcdSpellID = 361227 -- Return
  self.config.hastedSpellID = {361227,10} -- Return
  self.config.past = -1.5 -- Number of seconds to show in the past. Default = -3
  self.config.future = 12 -- Number of seconds to show in the future. Default = 12

  -- specializations
  local devastation = 1
  local preservation = 2
  local augmentation = 3
  
	-- Devastation Bars
	
		-- Shattering Star
		self:newSpell({
		requiredTree = 1,
		requiredTalent = 370452,
		cooldown = 370452,
		-- tracks the duration of shattering star
		debuff = 370452,
		barcolors = {
		cooldown  = {171/255, 191/255, 181/255, 0.5},
		debuffmine  = {029/255, 041/255, 081/255, 0.4}
    }
  })
	  
		-- Dragonrage
		self:newSpell({
		requiredTree = 1,
		requiredTalent = 375087,
		-- tracks the duration of dragonrage
		playerbuff = 375087,
		cooldown = 375087,
		barcolors = {
		cooldown  = {171/255, 191/255, 181/255, 0.5},
		playerbuff  = {255/255, 003/255, 062/255, 0.4}
    }
  })
  
    	-- Eternity Surge
		self:newSpell({
		requiredTree = 1,
		requiredTalent = 359073,
		cooldown = 359073,
		cast = 359073,
		barcolors = {
		casting = {027/255, 147/255, 228/255, 0.5},
		cooldown = {171/255, 191/255, 181/255, 0.4}
    }
  })
  
    	-- Fire Breath
		self:newSpell({
		requiredTree = 1,
		cooldown = 357208,
		cast = 357208,
			-- tracks iridescence red
		playerbuff = 386353, 
		barcolors = {
		casting = {027/255, 147/255, 228/255, 1.0},
		cooldown = {171/255, 191/255, 181/255, 0.5},
		playerbuff  = {185/255, 015/255, 015/255, 0.4}
    }
  })
 
		-- Disintigrate
		self:newSpell({
		requiredTree = 1,
		-- tracks blazing shards from 4pc, causing disintigrate to deal more damage with obsidian shards 
		playerbuff = 409848,
		cooldown = 356995,
		channel = {356995,4},
		hasted = true,
		recast = true,
		barcolors = {
		casting    = {027/255, 147/255, 228/255, 1.0},
		cooldown  = {171/255, 191/255, 181/255, 0.5},
		playerbuff  = {140/255, 110/255, 255/255, 0.4}
    }
  })
  
  		-- Pyre
		self:newSpell({
		requiredTree = 1,
		-- tracks blazing shards from 4pc, causing disintigrate to deal more damage with obsidian shards 
		playerbuff = 409848,
		cooldown = 357211,
		icon = 357211,
		barcolors = {
		cooldown  = {171/255, 191/255, 181/255, 0.5},
		playerbuff  = {140/255, 110/255, 255/255, 0.4}
    }
  })
  
		-- Living Flame	
		self:newSpell({
		requiredTree = 1,
		-- tracks burnout, the proc from fire breath for a free cast
		playerbuff = 375802,
		cast = 361469,
		barcolors = {
		casting  = {240/255, 060/255, 050/255, 0.5},
		playerbuff  = {240/255, 175/255, 050/255, 0.5}
    }
  })

		-- Deep Breath
	self:newSpell({
	requiredTree = 1,
    cooldown = 357210,
	debuff = 353759,
    barcolors = {
      cooldown  = {171/255, 191/255, 181/255, 0.5},
	  debuffmine  = {029/255, 041/255, 081/255, 0.4	}
    }
  })
		
		-- Firestorm, add a weakaura to glow for snapfire buff
	self:newSpell({
    requiredTree = 1,
	requiredTalent = 368847,
    cooldown = 368847,
	cast = 368847,
    barcolors = {
      casting = {027/255, 147/255, 228/255, 1.0},
      cooldown = {171/255, 191/255, 181/255, 0.5}
    }
  })
  
	-- Preservation Bars
	
	-- Verdant Embrace
		self:newSpell({
		requiredTree = 2,
		-- tracks lifebind, sharing healing with another
		playerbuff = 373267,
		cooldown = 360995,
		icon = 360995,
		barcolors = {
        cooldown  = {171/255, 191/255, 181/255, 0.5},
		playerbuff  = {215/255, 070/255, 027/255, 0.5}
    }
  })
	
	-- burst healing is temporal anomaly 
	-- Temporal Anomaly
		self:newSpell({
		requiredTree = 2,
		cast = 373861,
		-- tracks temporal compression, empower spells reach max sooner and stacks to 4
		playerbuff = 362877,
		refreshable = true,
		icon = 373861,
		cooldown = 373861,
		barcolors = {
		casting = {240/255, 220/255, 080/255, 1.0},
        cooldown  = {171/255, 191/255, 181/255, 0.5},
		playerbuff  = {240/255, 175/255, 050/255, 0.35}
    }
  })

	-- Spiritbloom
		self:newSpell({
		requiredTree = 2,
		requiredTalent = 367226,
		cooldown = 382731,
		cast = 367226,
		playerbuff = 409895,
		barcolors = {
		casting = {027/255, 147/255, 228/255, 0.5},
		playerbuff = {080/255, 210/255, 120/255, 0.5},
		cooldown = {171/255, 191/255, 181/255, 0.4}
    }
  })
  
    	-- Dream Breath
		self:newSpell({
		requiredTree = 2,
		requiredTalent = 355936,
		cooldown = 382614,
		cast = 382614,
		playerbuff = 373835,
		barcolors = {
		casting = {027/255, 147/255, 228/255, 0.5},
		cooldown = {171/255, 191/255, 181/255, 0.4},
		playerbuff = {040/255, 165/255, 075/255, 0.5}
    }
  })
	
  		-- Echo
		self:newSpell({
		requiredTree = 2,
		playerbuff = 364343,
		cooldown = 364343,
		icon = 364343,
		auraunit = usemouseover and 'mouseover' or 'target',
		hasted = true,
		refreshable = true,
		barcolors = {
		cooldown  = {171/255, 191/255, 181/255, 0.5},
		playerbuff  = {140/255, 110/255, 255/255, 0.4}
    }
  })
  
    -- Reversion
  self:newSpell({
    requiredTree = 2,
    requiredTalent = 366155,
    playerbuff = {366155, 1.6 },
    recharge = 366155,
    auraunit = usemouseover and 'mouseover' or 'target',
	hasted = true,
    refreshable = true,
	icon = 366155,
	-- living flame cast
	cast = 361469,
    barcolors = {
	  casting  = {240/255, 060/255, 050/255, 0.5},
      cooldown  = {255/255, 003/255, 062/255, 0.5},
      playerbuff  = {230/255, 185/255, 085/255, 0.4}
    }
  })
	
	-- Deep Breath
	self:newSpell({
	requiredTree = 2,
    cooldown = {357210, 382266},
	debuff = 353759,
    barcolors = {
    cooldown  = {171/255, 191/255, 181/255, 0.5},
	debuffmine  = {029/255, 041/255, 081/255, 0.4}
    }
  })
  
  	-- Augmentation Bars

		-- Breath of Eons
		self:newSpell({
		requiredTree = 3,
		-- tracks the duration of breath of eons
		playerbuff = 403631,
		cooldown = 403631,
		barcolors = {
		cooldown  = {171/255, 191/255, 181/255, 0.5},
		playerbuff  = {255/255, 003/255, 062/255, 0.4}
    }
  })
  
      	-- Fire Breath
		self:newSpell({
		requiredTree = 3,
		cooldown = 382266,
		cast = 382266,
		barcolors = {
		casting = {027/255, 147/255, 228/255, 1.0},
		cooldown = {171/255, 191/255, 181/255, 0.5}
    }
  })
  
	-- Upheaval
		self:newSpell({
		requiredTree = 3,
		cooldown = 408092,
		cast = 408092,
		barcolors = {
		casting = {027/255, 147/255, 228/255, 1.0},
		cooldown = {171/255, 191/255, 181/255, 0.5}
    }
  })
	
	-- ebon might, 395296 ebon might buff vs 395152 cd
		self:newSpell({
		requiredTree = 3,
		cooldown = 395152,
		cast = 395152,
		playerbuff = 395296,
		barcolors = {
		casting = {027/255, 147/255, 228/255, 0.5},
		cooldown = {171/255, 191/255, 181/255, 0.4},
		playerbuff = {040/255, 165/255, 075/255, 0.5}
    }
  })
	
	-- eruption - extends might by 1s
		self:newSpell({
		requiredTree = 3,
		cooldown = 395160,
		cast = 395160,
		barcolors = {
		casting = {027/255, 147/255, 228/255, 0.5},
		cooldown  = {171/255, 191/255, 181/255, 0.5}
    }
  })
	
	-- prescience, increases crit + copies dam, buff on randoms
		self:newSpell({
		requiredTree = 3,
		cooldown = 409311,
		playerbuff = 410089,
		auraunit = usemouseover and 'mouseover' or 'target' or 'player' or 'softfriend',
		barcolors = {
		cooldown = {171/255, 191/255, 181/255, 0.4},
		playerbuff = {040/255, 165/255, 075/255, 0.5}
    }
  })
	
	-- blistering scales, buffs on target of target 
		self:newSpell({
		requiredTree = 3,
		cooldown = 360827,
		playerbuff = 410651,
		auraunit = usemouseover and 'mouseover' or 'target' or 'player' or 'softfriend',
		icon = 360827,
		barcolors = {
		cooldown = {171/255, 191/255, 181/255, 0.4},
		playerbuff = {040/255, 165/255, 075/255, 0.5}
    }
  })
  
  		-- Living Flame	
		self:newSpell({
		requiredTree = 3,
		-- tracks burnout, the proc from fire breath for a free cast
		playerbuff = 375802,
		cast = 361469,
		barcolors = {
		casting  = {240/255, 060/255, 050/255, 0.5},
		playerbuff  = {240/255, 175/255, 050/255, 0.5}
    }
  })
		
end
