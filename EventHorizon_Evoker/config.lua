local usemouseover = true    -- Make this false or nil (or just delete the line altogether) to make your healing bars not change when you mouse over something.

function EventHorizon:InitializeClass()

  print('Evoker init')

  -- Fire Breath
  self:newSpell({
    cooldown = 357208,
  })

end
