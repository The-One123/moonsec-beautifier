require("bin.basic_funcs") -- initiates basic functions

local sn = arg[1] -- file (script) name

local parse = parse
local to_source = to_source
local readfile = readfile
local writefile = writefile

local script = readfile(sn)
local ast = parse(script)
local source = to_source(ast)

writefile("temp.lua", source)
