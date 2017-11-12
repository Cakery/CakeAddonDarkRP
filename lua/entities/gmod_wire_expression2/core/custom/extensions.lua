E2Lib.RegisterExtension("cakeextension", true)

e2function number entity:getMoney()
if !IsValid(this) then return 0 end
if this:GetClass()=="spawned_money" then
return this:Getamount()
else
return 0
end
end

e2function string entity:getShipmentName()
if !IsValid(this) then return "" end
if this:GetClass()=="spawned_shipment" then
return CustomShipments[this:Getcontents() or ""].name
else return ""
end
end

e2function number entity:getShipmentCount()
if !IsValid(this) then return 0 end
if this:GetClass()=="spawned_shipment" then
return this:Getcount()
else
return 0
end
end
