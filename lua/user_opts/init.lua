-- user options

-- neorg path
NeorgPath = ""

-- TODO: put this in neorg.lua
if (NeorgPath ~= "") then
    os.execute("mkdir -p " .. NeorgPath)
end

-- colourscheme
-- only set one to true, otherwise mutliple
-- colourschemes will be installed causing startup times to be slower
Everforest = true
Tokyonight = false
Solarized = false

-- transparency
Transparent = false
