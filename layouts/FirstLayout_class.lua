require("Layout")

FirstLayout = Layout:new()

function FirstLayout:new(nWindowsRight)
  self.nWindowsRight = nWindowsRight or 2
  return self
end

function FirstLayout:name()
  return "FirstLayout"
end

function FirstLayout:render(windows)
  local mainWindowSet = false
  local secondaryWindowCount = 0
  local windows = hs.window.allWindows()

  for i, window in ipairs(windows) do
    if (window:id() ~= nil) then
      if (window:isVisible()) then
        if (not mainWindowSet) then
            mainWindowSet = true

            layoutLeft = {
              { nil, window:title(), nil, hs.layout.left50, nil, nil }
            }
            hs.layout.apply(layoutLeft)
        else
          if (secondaryWindowCount < self.nWindowsRight) then
            local frame = window:frame()
            local max = window:screen():frame()

            frame.x = max.w / 2
            frame.y = secondaryWindowCount * (max.h / self.nWindowsRight) 
            frame.w = max.w / 2
            frame.h = max.h / self.nWindowsRight
            window:setFrame(frame)

            secondaryWindowCount = secondaryWindowCount + 1
          end
        end
      end

      --hs.alert.show(i .. ": " .. window:id())
    end
  end
end

return FirstLayout
