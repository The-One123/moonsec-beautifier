return (function()
    local add_to_environment = function(funcs)
        for name, value in next, funcs do
            getfenv()[name] = value;
            _G[name] = value;
        end
    end
    local require = require

    local funcs = {
        ["readfile"] = function(file_path)
            local file = io.open(file_path, "r")
            local contents = file:read("*a")
            file:close()
        
            return contents
        end,

        ["writefile"] = function(file_path, contents)
            local file = io.open(file_path, "w")
            local result = file:write(contents)
            file:close()
        
            return result
        end,

        ["parse"] = require("bin.parser").parser,

        ["to_source"] = require("bin.parser").to_source
    }

    add_to_environment(funcs)
end)()
