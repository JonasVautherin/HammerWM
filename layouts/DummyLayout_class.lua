require("Layout")

DummyLayout = Layout:new()

function DummyLayout:new()
  return self
end

function DummyLayout:name()
  return "DummyLayout"
end

function DummyLayout:render(windows)
  hs.alert.show("Render dummy layout!")
end

return DummyLayout
