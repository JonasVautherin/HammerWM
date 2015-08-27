package.path = package.path .. ";layouts/?_abstract_class.lua;layouts/?_class.lua;utils/?_class.lua"

showHints = function()
  hs.hints.windowHints()
end

showGrid = function()
  hs.grid.show()
end

rotateLayoutReverse = function()
  rotateLayout(true)
end

rotateLayout = function(reverse)
  local increment = reverse and -1 or 1

  currentLayoutId = currentLayoutId or 0
  layoutsList = layoutsList or loadLayouts()
  currentLayoutId = ((currentLayoutId - 1 + increment) % #layoutsList) + 1

  -- Load the next layout with its (optional) parameters
  local layout = require(layoutsList[currentLayoutId][1]):new(layoutsList[currentLayoutId][2])
  layout:render()
  hs.alert.show(layout:name()) --TODO Show that in a better way
end

loadLayouts = function()
  -- TODO Load them from the layouts directory directly, and have the parameters in config.lua?
  layoutsList = {
    { "FirstLayout", nil },
    { "DummyLayout", nil },
    { "DummyLayout2", nil }
  }
  return layoutsList
end

activeWinLeft50 = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end

activeWinRight50 = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end

activeWinUp50 = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end

activeWinDown50 = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h / 2)
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end

activeWinMaximize = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end

reload = function()
  hs.reload()
end

require("config")
hs.alert.show("Config loaded")
