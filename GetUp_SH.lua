AddCSLuaFile("client/GetUp_CL.lua")
AddCSLuaFile("GetUp_SH.lua")

hook.Add("Move", "KnockedDownSTOP", function(pl, move)
if pl.KnockedDown == true or pl.GetUp == true then
	if move:GetForwardSpeed() > 0 then
	if move:GetForwardSpeed() > -pl:GetMaxSpeed() * -0 then
	move:SetForwardSpeed(-pl:GetMaxSpeed() * -0)
	end
	end
	if move:GetForwardSpeed() < 0 then
	if move:GetForwardSpeed() < -pl:GetMaxSpeed() * 0 then
	move:SetForwardSpeed(-pl:GetMaxSpeed() * 0)
	end
	end
	if move:GetSideSpeed() > 0 then
	if move:GetSideSpeed() > -pl:GetMaxSpeed() * -0 then
	move:SetSideSpeed(-pl:GetMaxSpeed() * -0)
	end
	end
	if move:GetSideSpeed() < 0 then
	if move:GetSideSpeed() < -pl:GetMaxSpeed() * 0 then
	move:SetSideSpeed(-pl:GetMaxSpeed() * 0)
	end
	end
end
end)