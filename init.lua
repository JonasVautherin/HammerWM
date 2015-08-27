package.path = package.path .. ";?_abstract_class.lua;?_class.lua"

showHints = function()
  hs.hints.windowHints()
end

showGrid = function()
  hs.grid.show()
end

rotateLayout = function()
  --[[
    Ideally, we might want to have some config loading
    the correct templates in a list, and a global state
    knowing which one is currently in use, so that we 
    can rotate like in AWM...
  --]]

  require("FirstLayout")
  a = FirstLayout:new(2)
  a:render(nil)
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

require("bindings")
hs.alert.show("Config loaded")
