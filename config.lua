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

loadLayouts = function()
  -- TODO Load them from the layouts directory directly, and have the parameters in config.lua?
  layoutsList = {
    { "FirstLayout", nil },
    { "DummyLayout", nil },
    { "DummyLayout2", nil }
  }
  return layoutsList
end


