function reload()
	hs.alert.show("Reloading Config")
	hs.reload()
end
--hs.hotkey.bind({"command option"}, 'r', reload)

local application = require "hs.application"
local hotkey = require "hs.hotkey"
local alert = require "hs.alert"

require "scripts"

--local flag = 0
--local frontmostApp = nil
--
--local function roundBrackets(k)
--	return function ()
--		hs.eventtap.event.newKeyEvent(hs.keycodes.map.shift, true):post()
--		hs.eventtap.event.newKeyEvent('9', true):post()
--		hs.eventtap.event.newKeyEvent('0', true):post()
--		hs.eventtap.event.newKeyEvent(hs.keycodes.map.shift, false):post()
--		hs.eventtap.event.newKeyEvent('left', true):post()
--		k:exit()
--	end
--end
--
--local function doubleQuotes(k)
--	return function ()
--		flag = 0
--			hs.eventtap.event.newKeyEvent(hs.keycodes.map.shift, true):post()
--			hs.eventtap.event.newKeyEvent('\'', true):post()
--			hs.eventtap.event.newKeyEvent('\'', false):post()
--			hs.eventtap.event.newKeyEvent('\'', true):post()
--			hs.eventtap.event.newKeyEvent('\'', false):post()
--			hs.eventtap.event.newKeyEvent(hs.keycodes.map.shift, false):post()
--		--hs.eventtap.event.newKeyEvent({"shift"}, '\'', true):post()
--		--hs.eventtap.event.newKeyEvent({"shift"}, '\'', true):post()
--		-- hs.eventtap.event.newKeyEvent(hs.keycodes.map.shift, false):post()
--		hs.eventtap.event.newKeyEvent('left', true):post()
--		hs.eventtap.event.newKeyEvent('left', false):post()
--		k:exit()
--	end
--end
--
--local function singleQuotes(k)
--	return function ()
--		flag = 0
--		hs.eventtap.event.newKeyEvent('\'', true):post()
--		hs.eventtap.event.newKeyEvent('\'', false):post()
--		hs.eventtap.event.newKeyEvent('\'', true):post()
--		hs.eventtap.event.newKeyEvent('\'', false):post()
--		hs.eventtap.event.newKeyEvent('left', true):post()
--		hs.eventtap.event.newKeyEvent('left', false):post()
--		k:exit()
--	end
--end
--
--local function backspaceDefault(k)
--	return function ()
--		if (flag == 1) then
--			hs.eventtap.event.newKeyEvent(hs.keycodes.map.shift, false):post()
--			hs.eventtap.event.newKeyEvent(hs.keycodes.map.fn, false):post()
--			hs.eventtap.event.newKeyEvent('delete', true):post()
--			hs.eventtap.event.newKeyEvent('delete', false):post()
--			k:exit()
--		end
--	end
--end
--
--local function leftDefault(k)
--	return function ()
--		if (flag == 1) then
--			hs.eventtap.event.newKeyEvent(hs.keycodes.map.shift, false):post()
--			hs.eventtap.event.newKeyEvent(hs.keycodes.map.fn, false):post()
--			hs.eventtap.event.newKeyEvent('left', true):post()
--			hs.eventtap.event.newKeyEvent('left', false):post()
--			k:exit()
--		end
--	end
--end
--
--local function backspaceSimple(k)
--	return function ()
--		hs.eventtap.event.newKeyEvent('delete', true):post()
--		hs.eventtap.event.newKeyEvent('delete', false):post()
--		hs.alert.show("backspace")
--	end
--end
--
--local function leftSimple(k)
--	return function ()
--		hs.eventtap.event.newKeyEvent('left', true):post()
--		hs.eventtap.event.newKeyEvent('left', false):post()
--		hs.alert.show("left")
--	end
--end
--
--local frontmostApp = 0
--
---- h
--local function commandBackspace(k)
--	return function ()
--		flag = 0
--		if (frontmostApp) then
--			hs.eventtap.event.newKeyEvent(hs.keycodes.map.ctrl, true):post()
--			hs.eventtap.event.newKeyEvent('w', true):post()
--			hs.eventtap.event.newKeyEvent('w', false):post()
--			hs.eventtap.event.newKeyEvent(hs.keycodes.map.ctrl, false):post()
--		else
--			hs.eventtap.event.newKeyEvent(hs.keycodes.map.cmd, true):post()
--			hs.eventtap.event.newKeyEvent('delete', true):post()
--			hs.eventtap.event.newKeyEvent('delete', false):post()
--			hs.eventtap.event.newKeyEvent(hs.keycodes.map.cmd, false):post()
--		end
--		k:exit()
--	end
--end
--
--local function flag0()
--	flag = 0
--end
--
--local function metaEnter(k)
--	return function ()
--		flag = 1
--		if (hs.application.find("iTerm")) then
--			frontmostApp = hs.application.find("iTerm"):isFrontmost()
--		end
--		k:enter()
--		hs.timer.doAfter(0.3, leftDefault(k))
--	end
--end
--
--local function deleteSequence(k, k2)
--	return function ()
--		flag = 0
--		k:exit()
--		hs.eventtap.event.newKeyEvent('delete', true):post()
--		hs.eventtap.event.newKeyEvent('delete', false):post()
--		hs.eventtap.event.newKeyEvent('delete', true):post()
--		hs.eventtap.event.newKeyEvent('delete', false):post()
--		k2:enter()
--		hs.timer.doAfter(2, function () k2:exit() end)
--	end
--end
--
--local function leftSequence(k, k2)
--	return function ()
--		flag = 0
--		k:exit()
--		hs.eventtap.event.newKeyEvent('left', true):post()
--		hs.eventtap.event.newKeyEvent('left', false):post()
--		hs.eventtap.event.newKeyEvent('left', true):post()
--		hs.eventtap.event.newKeyEvent('left', false):post()
--		k2:enter()
--		hs.timer.doAfter(2, function () k2:exit() end)
--	end
--end
--
--local function phony()
--end
--local function turnOffModal()
--	hs.timer.doAfter(2, phony)
--	k:exit()
--end
--function selfSend(k, key)
--	return function ()
--		flag0();
--		k:exit();
--		hs.eventtap.event.newKeyEvent('delete', true):post()
--		hs.eventtap.event.newKeyEvent('delete', false):post()
--		hs.eventtap.event.newKeyEvent(key, true):post();
--		hs.eventtap.event.newKeyEvent(key, false):post() 
--	end
--end
--
----hs.hotkey.bind({}, '\\', turnOffM)
--
---- modals declaration
--k = hs.hotkey.modal.new({'shift command'}, 'a', 'aaaaaa')
--k2 = hs.hotkey.modal.new({'shift command'}, 'b', 'bbbbb')
--
---- modal triggers
--hs.hotkey.bind({'control'}, 'r', metaEnter(k))
--k:bind({'control'}, 'r', leftSequence(k, k2))
--
---- modal bindings
--k2:bind({'control'}, 'r', leftSimple(k))
--k:bind({}, 'delete', doubleQuotes(k))
--k:bind({'control'}, 'a', singleQuotes(k))
--k:bind({}, 'right', singleQuotes(k))
--k:bind({"command"}, 'f', singleQuotes(k))
--
--k:bind({}, 'escape', selfSend(k, "escape"))
--k:bind({}, 'a', selfSend(k, "a"))
--k:bind({}, 'b', selfSend(k, "b"))
--k:bind({}, 'c', selfSend(k, "c"))

--function k:entered()
--	hs.timer.doAfter(2, function() hs.alert.show("Meta exited"); k:exit() end)
--end

--k:bind({}, 'left', doubleQuotes(k))
--hs.hotkey.bind({"control"}, 'f', doubleQuotes(k))

-- set up your windowfilter
switcher = hs.window.switcher.new() -- default windowfilter: only visible windows, all Spaces
-- switcher_space = hs.window.switcher.new(hs.window.filter.new():setCurrentSpace(true):setDefaultFilter{}) -- include minimized/hidden windows, current Space only
-- switcher_browsers = hs.window.switcher.new{'Safari','Google Chrome'} -- specialized switcher for your dozens of browser windows :)
--
-- -- bind to hotkeys; WARNING: at least one modifier key is required!
hs.hotkey.bind('cmd shift','1','Next window',function()switcher:next()end)
hs.hotkey.bind('cmd shift','6','Next window',function()switcher:previous()end)
-- hs.hotkey.bind('alt-shift','tab','Prev window',function()switcher:previous()end)

-- require "application_watcher"

hs.grid.setGrid('100x100') -- allows us to place on quarters, thirds and halves
hs.grid.MARGINX = 0
hs.grid.MARGINY = 0
hs.window.animationDuration = 0 -- disable animations

function reloadConfig(files)
	doReload = false
	for _,file in pairs(files) do
		if file:sub(-4) == ".lua" then
			doReload = true
		end
	end
	if doReload then
		hs.reload()
	end
end
myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")

-- local events = require 'events'
-- local karabiner = require 'karabiner'
-- local keylogger = require 'keylogger'
-- local log = require 'log'
-- local reloader = require 'reloader'

-- Forward function declarations.
local activate = nil
local activateLayout = nil
local canManageWindow = nil
local chain = nil
local handleScreenEvent = nil
local handleWindowEvent = nil
local hide = nil
local initEventHandling = nil
local internalDisplay = nil
local isMailMateMailViewer = nil
local prepareScreencast = nil
local tearDownEventHandling = nil
local windowCount = nil

local screenCount = #hs.screen.allScreens()

local grid = {
	fullScreen = '0,0 100x100',
	centeredBig = '25,25 50x50',
	centeredSmall = '35,35 30x30',
	leftHalf = '0,0 50x100',
	leftThird = '0,0 33x100',
	leftTwoThirds = '0,0 66x100',
	rightHalf = '50,0 50x100 ',
	rightThird = '66,0 34x100',
	rightTwoThirds = '33,0 67x100',

	topHalf = '0,0 12x6',
	topThird = '0,0 12x4',
	topTwoThirds = '0,0 12x8',
	bottomHalf = '0,6 12x6',
	bottomThird = '0,8 12x4',
	bottomTwoThirds = '0,4 12x8',
	topLeft = '0,0 6x6',
	topRight = '6,0 6x6',
	bottomRight = '6,6 6x6',
	bottomLeft = '0,6 6x6',
}

-- Layouts {{{
local layoutConfig = {
	_before_ = (function()
		hide('com.spotify.client')
	end),

	_after_ = (function()
		-- Make sure Textual appears in front of Skype, and iTerm in front of
		-- others.
		activate('com.codeux.irc.textual5')
		activate('com.googlecode.iterm2')
	end),

	['com.codeux.irc.textual5'] = (function(window)
		hs.grid.set(window, grid.fullScreen, internalDisplay())
	end),

	['com.flexibits.fantastical2.mac'] = (function(window)
		hs.grid.set(window, grid.fullScreen, internalDisplay())
	end),

	['com.freron.MailMate'] = (function(window, forceScreenCount)
		local count = forceScreenCount or screenCount
		if isMailMateMailViewer(window) then
			if count == 1 then
				hs.grid.set(window, grid.fullScreen)
			else
				hs.grid.set(window, grid.leftHalf, hs.screen.primaryScreen())
			end
		end
	end),

	['com.github.atom'] = (function(window)
		-- Leave room for simulator to the right.
		hs.grid.set(window, grid.leftTwoThirds, internalDisplay())
	end),

	['com.google.Chrome'] = (function(window, forceScreenCount)
		local count = forceScreenCount or screenCount
		if count == 1 then
			hs.grid.set(window, grid.fullScreen)
		else
			-- First/odd windows go on the RIGHT side of the screen.
			-- Second/even windows go on the LEFT side.
			-- (Note this is the opposite of what we do with Canary.)
			local windows = windowCount(window:application())
			local side = windows % 2 == 0 and grid.leftHalf or grid.rightHalf
			hs.grid.set(window, side, hs.screen.primaryScreen())
		end
	end),

	['com.google.Chrome.canary'] = (function(window, forceScreenCount)
		local count = forceScreenCount or screenCount
		if count == 1 then
			hs.grid.set(window, grid.fullScreen)
		else
			-- First/odd windows go on the LEFT side of the screen.
			-- Second/even windows go on the RIGHT side.
			-- (Note this is the opposite of what we do with Chrome.)
			local windows = windowCount(window:application())
			local side = windows % 2 == 0 and grid.rightHalf or grid.leftHalf
			hs.grid.set(window, side, hs.screen.primaryScreen())
		end
	end),

	['com.googlecode.iterm2'] = (function(window, forceScreenCount)
		local count = forceScreenCount or screenCount
		if count == 1 then
			hs.grid.set(window, grid.fullScreen)
		else
			hs.grid.set(window, grid.leftHalf, hs.screen.primaryScreen())
		end
	end),

	['com.skype.skype'] = (function(window)
		hs.grid.set(window, grid.rightHalf, internalDisplay())
	end),
}

--
-- Utility and helper functions.
--

-- Returns the number of standard, non-minimized windows in the application.
--
-- (For Chrome, which has two windows per visible window on screen, but only one
-- window per minimized window).
windowCount = (function(app)
	local count = 0
	if app then
		for _, window in pairs(app:allWindows()) do
			if window:isStandard() and not window:isMinimized() then
				count = count + 1
			end
		end
	end
	return count
end)

hide = (function(bundleID)
	local app = hs.application.get(bundleID)
	if app then
		app:hide()
	end
end)

activate = (function(bundleID)
	local app = hs.application.get(bundleID)
	if app then
		app:activate()
	end
end)

isMailMateMailViewer = (function(window)
	local title = window:title()
	return title == 'No mailbox selected' or
	string.find(title, '%(%d+ messages?%)')
end)

canManageWindow = (function(window)
	local application = window:application()
	local bundleID = application:bundleID()

	-- Special handling for iTerm: windows without title bars are
	-- non-standard.
	return window:isStandard() or
	bundleID == 'com.googlecode.iterm2'
end)

internalDisplay = (function()
	-- Fun fact: this resolution matches both the 13" MacBook Air and the 15"
	-- (Retina) MacBook Pro.
	return hs.screen.find('1440x900')
end)

activateLayout = (function(forceScreenCount)
	layoutConfig._before_()

	for bundleID, callback in pairs(layoutConfig) do
		local application = hs.application.get(bundleID)
		if application then
			local windows = application:visibleWindows()
			for _, window in pairs(windows) do
				if canManageWindow(window) then
					callback(window, forceScreenCount)
				end
			end
		end
	end

	layoutConfig._after_()
end)
-- }}}

-- Event-handling {{{

handleWindowEvent = (function(window)
	if canManageWindow(window) then
		local application = window:application()
		local bundleID = application:bundleID()
		if layoutConfig[bundleID] then
			layoutConfig[bundleID](window)
		end
	end
end)

local windowFilter=hs.window.filter.new()
windowFilter:subscribe(hs.window.filter.windowCreated, handleWindowEvent)

handleScreenEvent = (function()
	-- Make sure that something noteworthy (display count) actually
	-- changed. We no longer check geometry because we were seeing spurious
	-- events.
	local screens = hs.screen.allScreens()
	if not (#screens == screenCount) then
		screenCount = #screens
		activateLayout(screenCount)
	end
end)

initEventHandling = (function()
	screenWatcher = hs.screen.watcher.new(handleScreenEvent)
	screenWatcher:start()
end)

tearDownEventHandling = (function()
	screenWatcher:stop()
	screenWatcher = nil
end)

initEventHandling()
-- events.subscribe('reload', tearDownEventHandling)
-- }}}

local lastSeenChain = nil
local lastSeenWindow = nil

-- chain {{{
-- Chain the specified movement commands.
--
-- This is like the "chain" feature in Slate, but with a couple of enhancements:
--
--  - Chains always start on the screen the window is currently on.
--  - A chain will be reset after 2 seconds of inactivity, or on switching from
--    one chain to another, or on switching from one app to another, or from one
--    window to another.
--
chain = (function(movements)
	local chainResetInterval = 2 -- seconds
	local cycleLength = #movements
	local sequenceNumber = 1

	return function()
		local win = hs.window.frontmostWindow()
		local id = win:id()
		local now = hs.timer.secondsSinceEpoch()
		local screen = win:screen()

		if
			lastSeenChain ~= movements or
			lastSeenAt < now - chainResetInterval or
			lastSeenWindow ~= id
			then
				sequenceNumber = 1
				lastSeenChain = movements
			elseif (sequenceNumber == 1) then
				-- At end of chain, restart chain on next screen.
				screen = screen:next()
			end
			lastSeenAt = now
			lastSeenWindow = id

			hs.grid.set(win, movements[sequenceNumber], screen)

			if (movements[sequenceNumber] == grid.leftHalf or
				movements[sequenceNumber] == grid.leftThird or
				movements[sequenceNumber] == grid.leftTwoThirds or
				movements[sequenceNumber] == grid.fullScreen) and
				hs.screen.primaryScreen() == screen
				then
					r = win:size()
					r.w = r.w+4
					win:move(hs.geometry.point(-4,0))
					win:setSize(r)

					-- local win = hs.window.focusedWindow()
					-- local f = win:frame()
					-- f.x = f.x - 4
					-- win:setFrame(f)
				end
				hs.alert.show(screen:name() .. "  " .. movements[sequenceNumber])
				sequenceNumber = sequenceNumber % cycleLength + 1
			end
		end)

		-- }}}

		-- Key bindings {{{

		hs.hotkey.bind({}, 'f15', chain({
			grid.fullScreen,
		}))

		hs.hotkey.bind({}, 'f16', chain({
			grid.centeredBig,
			grid.centeredSmall,
		}))

		hs.hotkey.bind({}, 'f17', chain({
			grid.leftHalf,
			grid.leftThird,
			grid.leftTwoThirds,
		}))

		hs.hotkey.bind({}, 'f18', chain({
			grid.rightHalf,
			grid.rightThird,
			grid.rightTwoThirds,
		}))

		hs.hotkey.bind({'ctrl', 'alt'}, 'up', chain({
			grid.topHalf,
			grid.topThird,
			grid.topTwoThirds,
		}))

		hs.hotkey.bind({'ctrl', 'alt'}, 'right', chain({
			grid.rightHalf,
			grid.rightThird,
			grid.rightTwoThirds,
		}))

		hs.hotkey.bind({'ctrl', 'alt'}, 'down', chain({
			grid.bottomHalf,
			grid.bottomThird,
			grid.bottomTwoThirds,
		}))

		hs.hotkey.bind({'ctrl', 'alt'}, 'left', chain({
			grid.leftHalf,
			grid.leftThird,
			grid.leftTwoThirds,
		}))

		hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'up', chain({
			grid.topLeft,
			grid.topRight,
			grid.bottomRight,
			grid.bottomLeft,
		}))

		hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'down', chain({
			grid.fullScreen,
			grid.centeredBig,
			grid.centeredSmall,
		}))

		hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'f1', (function()
			hs.alert('One-monitor layout')
			activateLayout(1)
		end))

		hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'f2', (function()
			hs.alert('Two-monitor layout')
			activateLayout(2)
		end))

		hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'f3', (function()
			hs.console.alpha(.75)
			hs.toggleConsole()
		end))

		hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'f4', (function()
			hs.notify.show(
			'Hammerspoon',
			'Reloaded in the background',
			'Press ⌃⌥⌘F3 to reveal the console.'
			)
			reloader.reload()
		end))

		-- }}}

