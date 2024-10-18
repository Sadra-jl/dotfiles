lvim.transparent_window = false


-- load all source files in lua directory
local info = debug.getinfo(1, 'S')
local module_directory = string.match(info.source, '^@?(.*)/') or "."
local module_filename = string.match(info.source, '/([^/]*)$')

function Scandir(directory)
    local i, t, popen = 0, {}, io.popen
    local pfile = popen('find "' ..
        directory ..
        '/lua" -type f -name "*.lua" | sed "s/.*lua\\///; s/\\//./g; s/.lua//; s/' .. module_filename .. '//"')

    if pfile == nil then return {} end

    for filename in pfile:lines() do
        i = i + 1
        t[i] = filename
    end

    pfile:close()
    return t
end

for _, filename in ipairs(Scandir(module_directory)) do
    reload(filename)
end
