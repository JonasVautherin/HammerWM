require("Layout")

DummyLayout2 = Layout:new()

function DummyLayout2:new()
  return self
end

function DummyLayout2:name()
  return "DummyLayout2"
end

function DummyLayout2:render(windows)
  hs.alert.show("Render dummy layout 2!")
end

return DummyLayout2
