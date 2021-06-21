bin\\binaries\\luajit bin\\main.lua script.lua
bin\\binaries\\luac5.1 temp.lua
java -jar bin\\binaries\\unluac.jar luac.out > script-beautified.lua
del luac.out
del temp.lua
exit