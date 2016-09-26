--	talkactions.xml
--	<talkaction words="!canshare" access="0" script="canuseshare.lua"/>
	
function onSay(cid, words, param)

	local members = getPartyMembers(cid)
	if not members then
		doPlayerSendCancel(cid, "You are not in a party.")
		return false
	end

	local boolean = not canUseSharedExperience(cid)
	doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You can " .. (boolean and "not" or "") .. " use shared experience.")

	return false
end