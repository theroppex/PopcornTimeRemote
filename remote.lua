local keyboard = libs.keyboard;
local task = libs.win;

actions.launch = function()
	if OS_WINDOWS then
		os.execute("start \"\" \"%localappdata%\\Popcorn Time\\Popcorn Time\" ");
		settings.state = "on";
		layout.btnStart.color = "#960000";
	end
end

actions.switch = function()
	if OS_WINDOWS then
		task.switchtowait("Popcorn Time.exe");
	end
end

actions.exit = function()
	if OS_WINDOWS then
		actions.switch();
		keyboard.stroke("menu", "f4");
		settings.state = "off";
		layout.btnStart.color = "#009600";
	end
end

actions.tabL = function ()
	actions.switch();
	keyboard.stroke("shift", "tab");
end

actions.tabR = function ()
	actions.switch();
	keyboard.press("tab");
end

actions.back = function ()
	actions.switch();
	keyboard.press("backspace");
end

actions.up = function ()
	actions.switch();
	keyboard.press("up");
end

actions.find = function ()
	actions.switch();
	keyboard.stroke("control","F");
end

actions.left = function ()
	actions.switch();
	keyboard.press("left");
end

actions.select = function ()
	actions.switch();
	keyboard.press("enter");
end

actions.right = function ()
	actions.switch();
	keyboard.press("right");
end

actions.play = function ()
	actions.switch();
	keyboard.press("space");
end

actions.down = function ()
	actions.switch();
	keyboard.press("down");
end

actions.season_up = function ()
	actions.switch();
	keyboard.stroke("control", "up");
end

actions.season_down = function ()
	actions.switch();
	keyboard.stroke("control", "down");
end

actions.start = function ()
	local state = settings.state;
	if state == "off" then
		actions.launch();
	else
		actions.exit();
	end
end

