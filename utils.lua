-- Source: http://stackoverflow.com/a/11130774/1368342
function scandir(directory)
  local i, t, popen = 0, {}, io.popen
  for filename in io.popen('ls "' .. directory .. '"'):lines() do
    i = i + 1
    t[i] = filename
  end
  return t
end
