hs.hotkey.bind({"cmd", "alt", "ctrl"}, "G", showGrid)
hs.hotkey.bind({"cmd"}, "e", showHints)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", reload)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "/", activeWinMaximize)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", activeWinDown50)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up", activeWinUp50)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", activeWinLeft50)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", activeWinRight50)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "P", rotateLayout)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "O", rotateLayoutReverse)

-- Focuses the next window (clockwise)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "tab", function()
  local focusedWin = hs.window.focusedWindow()

  if focusedWin ~= nil then
    local focusedScreen = focusedWin:screen():frame()
    local screenCenterX = focusedScreen.x + focusedScreen.w / 2
    local screenCenterY = focusedScreen.y + focusedScreen.h / 2

    local function angleOfWindow(win)
      local frame = win:frame()
      return math.deg(math.atan(frame.y + frame.h / 2 - screenCenterY, frame.x + frame.w / 2 - screenCenterX)) + 180
    end

    local focusedWinAngle = angleOfWindow(focusedWin)

    --hs.alert.show(":::" .. focusedWinAngle)

    local windows = focusedWin:otherWindowsSameScreen()
    local closestWindow = nil
    local closestDiff = 360
    for i, window in ipairs(windows) do
      if window:id() ~= nil and window:isVisible() then
        local angle = angleOfWindow(window)
        if angle < focusedWinAngle then
          angle = angle + 360 - focusedWinAngle
        else
          angle = angle - focusedWinAngle
        end

        if angle < closestDiff then
          closestWindow = window
          closestDiff = angle
        end
      end
    end

    closestWindow:focus()

    --hs.alert.show(closestWindow:id() .. ": " .. closestWindow:title())
  end
end)

loadLayouts = function()
  -- TODO Load them from the layouts directory directly, and have the parameters in config.lua?
  layoutsList = {
    { "FirstLayout", nil },
    { "DummyLayout", nil },
    { "DummyLayout2", nil }
  }
  return layoutsList
end


