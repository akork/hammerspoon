script = [[
tell application "System Events" to tell process "MarginNote X"
try
	  click menu item "Go page number" of menu 1 of menu bar item "Reader" of menu bar 1
    -- set xxx to name of every menu item of menu 1 of menu bar item "Window" of menu bar 1
    -- display dialog xxx
on error error_message number error_number
      display alert ("YIKES! Something's wrong!") ¬
         message error_message ¬
         & (" Error number ") & error_number & "."
   end try
	-- click menu item "Pin Tab" of menu 1 of menu bar item "Window" of menu bar 1
end tell
]]


hs.hotkey.bind({"command option"}, 'g', function ()
	app = hs.application.frontmostApplication():name()
	if (app == "MarginNote X") then
	  hs.osascript.applescript(script)
		return
	end
	hs.alert.show(app)
			hs.eventtap.event.newKeyEvent(hs.keycodes.map.cmd, true):post()
			hs.eventtap.event.newKeyEvent('g', true):post()
			hs.eventtap.event.newKeyEvent('g', false):post()
			hs.eventtap.event.newKeyEvent(hs.keycodes.map.cmd, false):post()
end)
