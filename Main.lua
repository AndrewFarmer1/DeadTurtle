local MyMod = RegisterMod("DeadTurtle",1)
local DeadTurtle = Issac.GetItemIdByName("DeadTurtle")

function MyMod:CacheUpdate(player , cacheFlag)
  local player = Issac.GetPlayer(0)
  if player:HasCollectiable(DeadTurtle) then
    if cacheFlag == CacheFlag.CACHE_DAMAGE then 
      player.Damage = player.Damage + 1;
    end
    if cacheFlag == CacheFlag.CACHE_SPEED then 
      player.MoveSpeed = player.MoveSpeed + 1;
    end
	   end 
	
    MyMod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, MyMod.cacheUpdate) 
 