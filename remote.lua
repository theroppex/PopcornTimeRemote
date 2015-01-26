local keyboard = libs.keyboard;
local task = libs.win;

actions.switch = function()
	task.switchtowait("Popcorn Time.exe");
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

actions.start = function ()
	actions.switch();
	keyboard.press("backspace");
end

