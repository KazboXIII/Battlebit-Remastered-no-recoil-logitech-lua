EnablePrimaryMouseButtonEvents(true);
--basic setting, how long the left mousebutton is pressed
local lmouse_press = 40
 
 
local move_Mouse = 5 --how much the mouse is pulled down, per pixel (1 pixel every x milliseconds)
local click_sleep = 3 --interval between how often the left mouse is clicked and released ( milliseconds ) 
 
 
--------------------------------------------------------------------------
----------------OnEvent---------------------------------------------------
--------------------------------------------------------------------------
 
function OnEvent(event, arg)
    if IsMouseButtonPressed(3) then
        OutputLogMessage("clicked event = %s, arg = %s\n", event, arg);
        repeat
            if IsMouseButtonPressed(1) then
                repeat
                    MoveMouseRelative(0,move_Mouse)
                    Sleep(click_sleep)
                until not IsMouseButtonPressed(1)
            end
        until not IsMouseButtonPressed(3)
    end
end