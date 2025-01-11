-- Author: GtX | Andy
-- Date: 21.04.2022
-- Revision:  FS25-01

if SlotSystem ~= nil and SlotSystem.NUM_OBJECT_LIMITS ~= nil and SlotSystem.LIMITED_OBJECT_PALLET ~= nil then
    local platformId = getPlatformId()

    if platformId ~= nil and SlotSystem.NUM_OBJECT_LIMITS[SlotSystem.LIMITED_OBJECT_PALLET] ~= nil then
        SlotSystem.NUM_OBJECT_LIMITS[SlotSystem.LIMITED_OBJECT_PALLET][platformId] = math.huge
        Logging.info("[LimitedPalletsObjectFix] Pallet creation limit has been removed.")
    end
end
