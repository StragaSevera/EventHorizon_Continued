function EventHorizon:InitializeClass()
  self.config.gcdSpellID = 1966
  self.config.past = -1 -- Number of seconds to show in the past. Default = -3
  self.config.future = 11 -- Number of seconds to show in the future. Default = 11

  -- specializations
  local subtlety = 3

  -- Rupture
  self:newSpell({
    requiredTree = subtlety,
    debuff = {1943,2},
     barcolors   = {
     cooldown    = {171/255, 191/255, 181/255, 0.6},
     debuffmine  = {252/255, 000/255, 000/255, 0.4}
     },
  })

  -- Find Weakness with Secret Technique cooldown at half height.
  self:newSpell({
    requiredTree = subtlety,
    requiredTalent = 280719,
    debuff  = 316220,
    cooldown = 280719,
    smallCooldown = true,
     barcolors   = {
     debuffmine  = {010/255, 212/255, 080/255, 0.6},
     cooldown    = {171/255, 191/255, 181/255, 0.9}
     },
  })

  -- Shadow Dance
  self:newSpell({
    requiredTalent = 185313,
    playerbuff = 185313,
    recharge = 185313,
    barcolors   = {
     recharge    = {121/255, 141/255, 191/255, 0.4},
     playerbuff  = {010/255, 131/255, 202/255, 0.7}
     },
  })

  -- Symbols of Death
  self:newSpell({
    requiredTree = subtlety,
    playerbuff = 212283,
    cooldown = 212283,
     barcolors   = {
     cooldown    = {171/255, 191/255, 181/255, 0.6},
     playerbuff  = {232/255, 010/255, 232/255, 0.7}
     },
  })

  -- Slice and Dice with Vanish CD at half height.
  self:newSpell({
    playerbuff = 315496,
    smallCooldown = true,
    cooldown = 1856,
     barcolors   = {
     cooldown    = {171/255, 191/255, 181/255, 0.6},
     playerbuff  = {242/255, 242/255, 040/255, 0.6}
     },
  })
  
  -- Shadow Blades
  self:newSpell({
    requiredTree = 3,
    requiredTalent = 121471,
    playerbuff = 121471,
    cooldown = 121471,
     barcolors   = {
     playerbuff  = {111/255, 060/255, 202/255, 0.5}
     },
  })
  

end
