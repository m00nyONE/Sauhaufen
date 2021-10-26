local LAM2 = LibAddonMenu2

local panelData = {
    type = "panel",
    name = "Sauhaufen",
    displayName = "Sauhaufen",
    author = "|cFFC0CBm00ny|r",
    version = "1.11.0 BETA",
    website = "https://Sauhaufen.eu",
    slashCommand = "/shsettings",	--(optional) will register a keybind to open to this panel
    registerForRefresh = true,	--boolean (optional) (will refresh all options controls when a setting is changed and when the panel is shown)
    registerForDefaults = true,	--boolean (optional) (will set all options controls back to default values)
}

local optionsTable = {
    [1] = {
        type = "header",
        name = "Chat Einstellungen",
        width = "full",	--or "half" (optional)
    },
    --[[
    [2] = {
        type = "description",
        --title = "My Title",	--(optional)
        title = nil,	--(optional)
        text = "My description text to display. blah blah blah blah blah blah blah - even more sample text!!",
        width = "full",	--or "half" (optional)
    },
    ]]--
    [2] = {
        type = "checkbox",
        name = "MOTD",
        tooltip = "Aktiviert/Deaktiviert die MOTD beim Einloggen",
        getFunc = function() return Sauhaufen.savedVariables.showMOTD end,
        setFunc = function(value) Sauhaufen.savedVariables.showMOTD = value end,
        width = "half",	--or "half" (optional)
        default = true,
        --warning = "Will need to reload the UI.",	--(optional)
    },
    [3] = {
        type = "checkbox",
        name = "Online",
        tooltip = "Aktiviert/Deaktiviert das Anzeigen der Online Spieler im Chat",
        getFunc = function() return Sauhaufen.savedVariables.showOnline end,
        setFunc = function(value) Sauhaufen.savedVariables.showOnline = value end,
        width = "half",	--or "half" (optional)
        default = true,
        --warning = "Will need to reload the UI.",	--(optional)
    },
    [4] = {
        type = "header",
        name = "Oberflächeneinstellungen",
        width = "full",	--or "half" (optional)
    },
    [5] = {
        type = "checkbox",
        name = "Sauhaufen Addon Button anzeigen",
        tooltip = "Zeigt/Versteckt den Sauhaufen Menuknopf auf dem Bildschirm",
        getFunc = function() return Sauhaufen.savedVariables.showAddonButton end,
        setFunc = function(value) Sauhaufen.savedVariables.showAddonButton = value; Sauhaufen.GUISetup() end,
        width = "half",	--or "half" (optional)
        default = true,
        --warning = "Will need to reload the UI.",	--(optional)
    }, 

    --[[
    [3] = {
        type = "dropdown",
        name = "My Dropdown",
        tooltip = "Dropdown's tooltip text.",
        choices = {"table", "of", "choices"},
        getFunc = function() return "of" end,
        setFunc = function(var) print(var) end,
        width = "half",	--or "half" (optional)
        warning = "Will need to reload the UI.",	--(optional)
    },
    [4] = {
        type = "dropdown",
        name = "My Dropdown",
        tooltip = "Dropdown's tooltip text.",
        choices = {"table", "of", "choices"},
        getFunc = function() return "of" end,
        setFunc = function(var) print(var) end,
        width = "half",	--or "half" (optional)
        warning = "Will need to reload the UI.",	--(optional)
    },
    [5] = {
        type = "slider",
        name = "My Slider",
        tooltip = "Slider's tooltip text.",
        min = 0,
        max = 20,
        step = 1,	--(optional)
        getFunc = function() return 3 end,
        setFunc = function(value) d(value) end,
        width = "half",	--or "half" (optional)
        default = 5,	--(optional)
    },
    [6] = {
        type = "button",
        name = "My Button",
        tooltip = "Button's tooltip text.",
        func = function() d("button pressed!") end,
        width = "half",	--or "half" (optional)
        warning = "Will need to reload the UI.",	--(optional)
    },
    [7] = {
        type = "submenu",
        name = "Submenu Title",
        tooltip = "My submenu tooltip",	--(optional)
        controls = {
            [1] = {
                type = "checkbox",
                name = "My Checkbox",
                tooltip = "Checkbox's tooltip text.",
                getFunc = function() return true end,
                setFunc = function(value) d(value) end,
                width = "half",	--or "half" (optional)
                warning = "Will need to reload the UI.",	--(optional)
            },
            [2] = {
                type = "colorpicker",
                name = "My Color Picker",
                tooltip = "Color Picker's tooltip text.",
                getFunc = function() return 1, 0, 0, 1 end,	--(alpha is optional)
                setFunc = function(r,g,b,a) print(r, g, b, a) end,	--(alpha is optional)
                width = "half",	--or "half" (optional)
                warning = "warning text",
            },
            [3] = {
                type = "editbox",
                name = "My Editbox",
                tooltip = "Editbox's tooltip text.",
                getFunc = function() return "this is some text" end,
                setFunc = function(text) print(text) end,
                isMultiline = false,	--boolean
                width = "half",	--or "half" (optional)
                warning = "Will need to reload the UI.",	--(optional)
                default = "",	--(optional)
            },
        },
    },
    [8] = {
        type = "custom",
        reference = "MyAddonCustomControl",	--unique name for your control to use as reference
        refreshFunc = function(customControl) end,	--(optional) function to call when panel/controls refresh
        width = "half",	--or "half" (optional)
    },
    [9] = {
        type = "texture",
        image = "EsoUI\\Art\\ActionBar\\abilityframe64_up.dds",
        imageWidth = 64,	--max of 250 for half width, 510 for full
        imageHeight = 64,	--max of 100
        tooltip = "Image's tooltip text.",	--(optional)
        width = "half",	--or "half" (optional)
    },
    ]]--
}

LAM2:RegisterAddonPanel("SauhaufenMenu", panelData)
LAM2:RegisterOptionControls("SauhaufenMenu", optionsTable)