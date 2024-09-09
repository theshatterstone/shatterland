--[[

     Powerarrow Awesome WM theme
     github.com/lcpz

--]]

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi   = require("beautiful.xresources").apply_dpi

local math, string, os = math, string, os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility
awesome.spawn("conky -c" .. os.getenv("HOME") .. "/.config/conky/doom.conkyrc")

local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/powerarrow-blue-new-arrow"
local iconsdir                                  = os.getenv("HOME") .. "/.config/awesome/themes/"
theme.wallpaper                                 = theme.dir .. "/wallpaper.jpg"
-- theme.font                                      = "Noto Sans Regular 11"
theme.font                                      = "Ubuntu Bold 8"
theme.taglist_font                              = "Ubuntu Bold 10"
theme.tasklist_font                             = "Ubuntu Bold 10"
theme.fg_normal                                 = "#FEFEFE"
theme.fg_focus                                  = "#889fa7"
theme.fg_urgent                                 = "#b74822"
theme.bg_normal                                 = "#282c34"
theme.bg_focus                                  = "#1E2320"
theme.bg_urgent                                 = "#3F3F3F"
theme.taglist_fg_focus                          = "#dfdfdf"
theme.taglist_fg_occupied                       = "#dfdfdf"
theme.taglist_fg_empty                          = "#707880"
theme.tasklist_bg_focus                         = "#282c34"
theme.tasklist_fg_focus                         = "#51afef"
theme.border_width                              = dpi(2)
theme.border_normal                             = "#3F3F3F"
theme.border_focus                              = "#6F6F6F"
theme.border_marked                             = "#CC9393"
theme.systray_icon_spacing                      = 5
-- theme.titlebar_bg_focus                         = "#3F3F3F"
-- theme.titlebar_bg_normal                        = "#3F3F3F"
theme.titlebar_bg_focus                         = theme.bg_focus
theme.titlebar_bg_normal                        = theme.bg_normal
theme.titlebar_fg_focus                         = theme.fg_focus
theme.menu_height                               = dpi(18)
theme.menu_width                                = dpi(260)
-- group_labels = ["", "", "", "", "", "", "", "", "", "",]
theme.menu_submenu_icon                         = iconsdir .. "/icons/submenu.png"
theme.awesome_icon                              = iconsdir .. "/icons/awesome-white.png"
theme.awesome_icon_white                        = iconsdir .. "/icons/awesome-white.png"
-- theme.taglist_squares_sel                       = iconsdir .. "/icons/square_sel.png"
-- theme.taglist_squares_unsel                     = iconsdir .. "/icons/square_unsel.png"
theme.layout_tile                               = iconsdir .. "/icons/tile.png"
theme.layout_tileleft                           = iconsdir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = iconsdir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = iconsdir .. "/icons/tiletop.png"
theme.layout_fairv                              = iconsdir .. "/icons/fairv.png"
theme.layout_fairh                              = iconsdir .. "/icons/fairh.png"
theme.layout_spiral                             = iconsdir .. "/icons/spiral.png"
theme.layout_dwindle                            = iconsdir .. "/icons/dwindle.png"
theme.layout_max                                = iconsdir .. "/icons/max.png"
theme.layout_fullscreen                         = iconsdir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = iconsdir .. "/icons/magnifier.png"
theme.layout_floating                           = iconsdir .. "/icons/floating.png"
theme.widget_ac                                 = iconsdir .. "/icons/ac.png"
theme.widget_battery                            = iconsdir .. "/icons/battery.png"
theme.widget_battery_low                        = iconsdir .. "/icons/battery_low.png"
theme.widget_battery_empty                      = iconsdir .. "/icons/battery_empty.png"
theme.widget_mem                                = iconsdir .. "/icons/mem.png"
theme.widget_cpu                                = iconsdir .. "/icons/cpu.png"
theme.widget_temp                               = iconsdir .. "/icons/temp.png"
theme.widget_net                                = iconsdir .. "/icons/net.png"
theme.widget_hdd                                = iconsdir .. "/icons/hdd.png"
theme.widget_music                              = iconsdir .. "/icons/note.png"
theme.widget_music_on                           = iconsdir .. "/icons/note.png"
theme.widget_music_pause                        = iconsdir .. "/icons/pause.png"
theme.widget_music_stop                         = iconsdir .. "/icons/stop.png"
theme.widget_vol                                = iconsdir .. "/icons/vol.png"
theme.widget_vol_low                            = iconsdir .. "/icons/vol_low.png"
theme.widget_vol_no                             = iconsdir .. "/icons/vol_no.png"
theme.widget_vol_mute                           = iconsdir .. "/icons/vol_no.png"
theme.widget_mail                               = iconsdir .. "/icons/mail.png"
theme.widget_mail_on                            = iconsdir .. "/icons/mail_on.png"
theme.widget_task                               = iconsdir .. "/icons/task.png"
theme.widget_scissors                           = iconsdir .. "/icons/scissors.png"
theme.widget_weather                            = iconsdir .. "/icons/dish.png"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.useless_gap                               = 0
theme.titlebar_close_button_focus               = iconsdir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = iconsdir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active        = iconsdir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = iconsdir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = iconsdir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = iconsdir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = iconsdir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = iconsdir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = iconsdir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = iconsdir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = iconsdir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = iconsdir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = iconsdir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = iconsdir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = iconsdir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = iconsdir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = iconsdir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = iconsdir .. "/icons/titlebar/maximized_normal_inactive.png"

-- Custom icon for brightness, which is a custom script itself
-- theme.brightnessicon                            = iconsdir .. "/icons/stop.png"
-- -- local brightnessicon = wibox.widget.imagebox(theme.brightnessicon)
local brightnessicon = awful.widget.watch(
    "echo 'Brightness: ' ", 60,
    function(widget, stdout)
        widget:set_markup(" " .. markup.fontfg(theme.font, "#c678dd", stdout))
    end
)
local bar_widget_sep_margin_left = -10
local bar_widget_sep_margin_right = 4

-- -- Checking value from custom brightness script, icon defined above, script run on autostart in rc.lua
-- local brightness = awful.widget.watch('cat /home/shatterstone/.config/awesome/brightness', 1)
-- -- local brightness = awful.widget.watch("brightnessctl -p | grep % | awk '{print $4}'", 1)
local markup = lain.util.markup
local separators = lain.util.separators
local brightness = awful.widget.watch(
    "cat /home/shatterstone/.config/awesome/brightness", 1,
    function(widget, stdout)
        widget:set_markup(" " .. markup.fontfg(theme.font, "#dfdfdf", stdout))
    end
)
-- local layoutname = awful.widget.watch(
--     'awesome-client \'return mouse.screen.selected_tag.layout.name\' | cut -d \'"\' -f 2', 1,
--     function(widget, stdout)
--         widget:set_markup(" " .. markup.fontfg(theme.font, "#dfdfdf", stdout))
--     end
-- )

local layoutname = awful.widget.watch(
    'cat /home/shatterstone/.config/awesome/layoutname', 1,
    function(widget, stdout)
        widget:set_markup(" " .. markup.fontfg(theme.font, "#dfdfdf", stdout))
    end
)
-- Separators
local mainSep = awful.widget.watch(
    "echo '|' ", 60,
    function(widget, stdout)
        widget:set_markup(" " .. markup.fontfg("Ubuntu Mono 11", "#474747", stdout))
    end
)

-- Textclock
-- local clockicon = wibox.widget.textbox()
local clock = awful.widget.watch(
    "date +'%A %d %B %R'", 60,
    function(widget, stdout)
        widget:set_markup(" " .. markup.fontfg(theme.font, "#dfdfdf", stdout))
    end
)

-- Calendar
theme.cal = lain.widget.cal({
    attach_to = { clock },
    notification_preset = {
        font = "Noto Sans Mono Medium 10",
        fg   = theme.fg_normal,
        bg   = theme.bg_normal
    }
})



-- Taskwarrior
--local task = wibox.widget.imagebox(theme.widget_task)
--lain.widget.contrib.task.attach(task, {
    -- do not colorize output
--    show_cmd = "task | sed -r 's/\\x1B\\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g'"
--})
--task:buttons(my_table.join(awful.button({}, 1, lain.widget.contrib.task.prompt)))



-- Mail IMAP check
--local mailicon = wibox.widget.imagebox(theme.widget_mail)
--[[ commented because it needs to be set before use
mailicon:buttons(my_table.join(awful.button({ }, 1, function () awful.spawn(mail) end)))
theme.mail = lain.widget.imap({
    timeout  = 180,
    server   = "server",
    mail     = "mail",
    password = "keyring get mail",
    settings = function()
        if mailcount > 0 then
            widget:set_text(" " .. mailcount .. " ")
            mailicon:set_image(theme.widget_mail_on)
        else
            widget:set_text("")
            mailicon:set_image(theme.widget_mail)
        end
    end
})
--]]

-- ALSA volume
-- theme.volume = lain.widget.alsabar({
--     togglechannel = "Master",
--     notification_preset = { font = theme.font, fg = theme.fg_normal },
--     timeout = 1,
-- })

-- MPD
--[[
local musicplr = "urxvt -title Music -g 130x34-320+16 -e ncmpcpp"
local mpdicon = wibox.widget.imagebox(theme.widget_music)
mpdicon:buttons(my_table.join(
    awful.button({ modkey }, 1, function () awful.spawn.with_shell(musicplr) end),
    --[[awful.button({ }, 1, function ()
        awful.spawn.with_shell("mpc prev")
        theme.mpd.update()
    end),
    awful.button({ }, 2, function ()
        awful.spawn.with_shell("mpc toggle")
        theme.mpd.update()
    end),
    awful.button({ modkey }, 3, function () awful.spawn.with_shell("pkill ncmpcpp") end),
    awful.button({ }, 3, function ()
        awful.spawn.with_shell("mpc stop")
        theme.mpd.update()
    end)))
theme.mpd = lain.widget.mpd({
    settings = function()
        if mpd_now.state == "play" then
            artist = " " .. mpd_now.artist .. " "
            title  = mpd_now.title  .. " "
            mpdicon:set_image(theme.widget_music_on)
            widget:set_markup(markup.font(theme.font, markup("#FFFFFF", artist) .. " " .. title))
        elseif mpd_now.state == "pause" then
            widget:set_markup(markup.font(theme.font, " mpd paused "))
            mpdicon:set_image(theme.widget_music_pause)
        else
            widget:set_text("")
            mpdicon:set_image(theme.widget_music)
        end
    end
})
--]]

-- MEM
-- local memicon = wibox.widget.imagebox(theme.widget_mem)
local memicon = awful.widget.watch(
    "echo 'Mem: ' ", 60,
    function(widget, stdout)
        widget:set_markup(" " .. markup.fontfg(theme.font, "#dfdfdf", stdout))
    end
)
local mem = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#dfdfdf", mem_now.used .. "M " .. "/" .. mem_now.total .. "M"))
    end
})

-- CPU
-- local cpuicon = wibox.widget.imagebox(theme.widget_cpu)
local cpuicon = awful.widget.watch(
    "echo 'CPU: ' ", 60,
    function(widget, stdout)
        widget:set_markup(" " .. markup.fontfg(theme.font, "#282c34", stdout))
    end
)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#282c34", cpu_now.usage .. "%"))
    end
})

--[[ Coretemp (lm_sensors, per core)
local tempwidget = awful.widget.watch({awful.util.shell, '-c', 'sensors | grep Core'}, 30,
function(widget, stdout)
    local temps = ""
    for line in stdout:gmatch("[^\r\n]+") do
        temps = temps .. line:match("+(%d+).*°C")  .. "° " -- in Celsius
    end
    widget:set_markup(markup.font(theme.font, " " .. temps))
end)
--]]
-- Coretemp (lain, average)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#282c34", coretemp_now .. "°C"))
    end
})
--]]
-- local tempicon = wibox.widget.imagebox(theme.widget_temp)
local tempicon = awful.widget.watch(
    "echo 'Temp: ' ", 60,
    function(widget, stdout)
        widget:set_markup(" " .. markup.fontfg(theme.font, "#282c34", stdout))
    end
)

--[[ Weather
https://openweathermap.org/
Type in the name of your city
Copy/paste the city code in the URL to this file in city_id
--]]
local weathericon = wibox.widget.imagebox(theme.widget_weather)
theme.weather = lain.widget.weather({
    city_id = 2643743, -- London
    notification_preset = { font = "Noto Sans Mono Medium 10", fg = theme.fg_normal },
    weather_na_markup = markup.fontfg(theme.font, "#da8548", "N/A "),
    settings = function()
        descr = weather_now["weather"][1]["description"]:lower()
        units = math.floor(weather_now["main"]["temp"])
        widget:set_markup(markup.fontfg(theme.font, "#51afef", descr .. " @ " .. units .. "°C"))
    end
})

-- / fs
local fsicon = wibox.widget.imagebox(theme.widget_hdd)
--[[ commented because it needs Gio/Glib >= 2.54
theme.fs = lain.widget.fs({
    notification_preset = { fg = theme.fg_normal, bg = theme.bg_normal, font = "Noto Sans Mono Medium 10" },
    settings = function()
        local fsp = string.format(" %3.2f %s ", fs_now["/"].free, fs_now["/"].units)
        widget:set_markup(markup.font(theme.font, fsp))
    end
})
--]]

-- Battery
-- local baticon = wibox.widget.imagebox(theme.widget_battery)
local baticon = awful.widget.watch(
    "echo 'Battery: ' ", 60,
    function(widget, stdout)
        widget:set_markup(" " .. markup.fontfg(theme.font, "#dfdfdf", stdout))
    end
)
-- local bat = lain.widget.bat({
--     settings = function()
--         if bat_now.status and bat_now.status ~= "N/A" then
--             if bat_now.ac_status == 1 then
--                 widget:set_markup(markup.fontfg(theme.font, theme.fg_normal, " AC "))
--                 baticon:set_image(theme.widget_ac)
--                 return
--             elseif not bat_now.perc and tonumber(bat_now.perc) <= 5 then
--                 baticon:set_image(theme.widget_battery_empty)
--             elseif not bat_now.perc and tonumber(bat_now.perc) <= 15 then
--                 baticon:set_image(theme.widget_battery_low)
--             else
--                 baticon:set_image(theme.widget_battery)
--             end
--             widget:set_markup(markup.fontfg(theme.font, theme.fg_normal, " " .. bat_now.perc .. "% "))
--         else
--             widget:set_markup(markup.fontfg(theme.font, theme.fg_normal, perc .. " "))
--             baticon:set_image(theme.widget_ac)
--         end
--     end
-- })

local bat = lain.widget.bat({
    settings = function()
        local perc = bat_now.perc ~= "N/A" and bat_now.perc .. "%" or bat_now.perc

        if bat_now.ac_status == 1 then
            perc = perc .. " Charging"
        end

        widget:set_markup(markup.fontfg(theme.font, "#dfdfdf", perc .. ""))
    end
})

-- ALSA volume
-- local volicon = wibox.widget.imagebox(theme.widget_vol)
local volicon = awful.widget.watch(
    "echo 'Vol: ' ", 60,
    function(widget, stdout)
        widget:set_markup(" " .. markup.fontfg(theme.font, "#282c34", stdout))
    end
)
theme.volume = lain.widget.alsa({
    settings = function()
        if volume_now.status == "off" then
            widget:set_markup(markup.fontfg(theme.font, "#282c34", "M"))
        -- elseif tonumber(volume_now.level) == 0 then
        --     volicon:set_image(theme.widget_vol_no)
        -- elseif tonumber(volume_now.level) <= 50 then
        --     volicon:set_image(theme.widget_vol_low)
        else
            widget:set_markup(markup.fontfg(theme.font, "#282c34", volume_now.level .. "%"))
        end

        -- widget:set_markup(markup.fontfg(theme.font, "#dfdfdf", volume_now.level .. "%"))
    end,
    timeout = 1,
})

-- Net
-- local neticon = wibox.widget.imagebox(theme.widget_net)
-- local net = lain.widget.net({
--     settings = function()
--         widget:set_markup(markup.fontfg(theme.font, "#FEFEFE", " " .. net_now.received .. " ↓↑ " .. net_now.sent .. " "))
--     end
-- })

-- Systray
local systray = wibox.widget.systray()
systray:set_base_size(18)

-- Separators
local arrow = separators.arrow_left

function theme.powerline_rl(cr, width, height)
    local arrow_depth, offset = height/2, 0

    -- Avoid going out of the (potential) clip area
    if arrow_depth < 0 then
        width  =  width + 2*arrow_depth
        offset = -arrow_depth
    end

    cr:move_to(offset + arrow_depth         , 0        )
    cr:line_to(offset + width               , 0        )
    cr:line_to(offset + width - arrow_depth , height/2 )
    cr:line_to(offset + width               , height   )
    cr:line_to(offset + arrow_depth         , height   )
    cr:line_to(offset                       , height/2 )

    cr:close_path()
end

local function pl(widget, bgcolor, padding)
    return wibox.container.background(wibox.container.margin(widget, dpi(16), dpi(16)), bgcolor, theme.powerline_rl)
end

function theme.at_screen_connect(s)
    -- Quake application
   -- s.quake = lain.util.quake({ app = awful.util.terminal })
   s.quake = lain.util.quake({ app = "urxvt", height = 0.50, argname = "--name %s" })



    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- All tags open with layout 1
    awful.tag(awful.util.tagnames, s, awful.layout.layouts[1])
    
    s.mytaglist = awful.widget.taglist {
        screen  = s,
        filter  = awful.widget.taglist.filter.all,
        -- style   = {
        --     shape = gears.shape.powerline
        -- },
        -- layout   = {
        --     spacing = -12,
        --     spacing_widget = {
        --         color  = '#dddddd',
        --         shape  = gears.shape.powerline,
        --         widget = wibox.widget.separator,
        --     },
        --     layout  = wibox.layout.fixed.horizontal
        -- },
        widget_template = {
            {
                {
                    layout = wibox.layout.fixed.vertical,
                    {
                        {
                            id = 'text_role',
                            widget = wibox.widget.textbox
                        },
                        left = 7,
                        bottom = 2,
                        right = 7,
                        widget = wibox.container.margin
                    },
                    {
                        {
                            left = 10,
                            right = 10,
                            bottom = 5,
                            widget = wibox.container.margin
                        },
                        id = 'overline',
                        bg = '#ffffff',
                        shape = gears.shape.rectangle,
                        widget = wibox.container.background
                    }
                    -- {
                    --     {
                    --         id = 'text_role',
                    --         widget = wibox.widget.textbox
                    --     },
                    --     left = 7,
                    --     bottom = 1,
                    --     widget = wibox.container.margin
                    -- }
                },
                left = 1,
                right = 1,
                widget = wibox.container.margin
            },
            id = 'background_role',
            widget = wibox.container.background,
            shape = gears.shape.rectangle,
            create_callback = function(self, c3, index, objects)
                local focused = false
                for _, x in pairs(awful.screen.focused().selected_tags) do
                    if x.index == index then
                        focused = true
                        break
                    end
                end
                if focused then
                    self:get_children_by_id("overline")[1].bg = "#51afef" -- focused colour
                else 
                    self:get_children_by_id("overline")[1].bg = "#282c34" -- unfocused colour
                end
            end,
            update_callback = function(self, c3, index, objects)
                local focused = false
                for _, x in pairs(awful.screen.focused().selected_tags) do
                    if x.index == index then
                        focused = true
                        break
                    end
                end
                if focused then
                    self:get_children_by_id("overline")[1].bg = "#51afef"
                else 
                    self:get_children_by_id("overline")[1].bg = "#282c34"
                end
            end
        },
        
        buttons = awful.util.taglist_buttons
    }

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({ }, 1, function () awful.layout.inc( 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(-1) end),
                           awful.button({ }, 4, function () awful.layout.inc( 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(-1) end)))
    -- local layoutname = awful.layout.getname(_layout)
    -- local layoutname = awful.widget.layoutlist(screen = s, base_layout = wibox.layout.flex.vertical)
    -- Create a taglist widget
    -- s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.focused, awful.util.tasklist_buttons)

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = dpi(20), bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            --spr,
	    wibox.layout.margin(wibox.widget { image  = theme.awesome_icon_white, resize = true, widget = wibox.widget.imagebox }, 2, 3, 2, 2 ),  --order of padding values is: left, right, top, bottom

            s.mytaglist,
            s.mypromptbox,
            spr,
	    wibox.layout.margin(mainSep, 1, 1, 0, 1),
	    wibox.layout.margin(s.mylayoutbox, 1, 1, 3, 3),
	    wibox.layout.margin(layoutname, 1, 1, 1, 1),
	    wibox.layout.margin(mainSep, 1, 1, 0, 1),
        },
	spacing = -7,
        wibox.layout.margin(s.mytasklist,1, 1, -3, 0), --order of padding values is: left, right, top, bottom
        -- s.mytasklist, -- Middle widget
        { -- Right widgets
            -- layout = wibox.layout.fixed.horizontal,
            -- arrow("#343434", "#467b96"),
            -- wibox.container.background(wibox.widget { brightness, layout = wibox.layout.align.horizontal }, dpi(3), dpi(3), "#467b96"),
            -- arrow("#467b96", "#889fa7"),
            -- wibox.container.background(wibox.widget { cpuicon, cpu.widget, layout = wibox.layout.align.horizontal }, dpi(3), dpi(4), "#889fa7"),
            -- arrow("#889fa7", "#467b96"),
            -- wibox.container.background(wibox.widget { baticon, bat.widget, layout = wibox.layout.align.horizontal }, dpi(3), dpi(3), "#467b96"),
            -- arrow("#497B96", "#889FA7"),
            -- wibox.container.background(wibox.widget { volicon, theme.volume, layout = wibox.layout.align.horizontal }, dpi(1), dpi(1), "#889fa7"),
            -- arrow("#889FA7", "#497B96"),
            -- wibox.container.background(wibox.widget { tempicon, temp.widget, layout = wibox.layout.align.horizontal }, dpi(4), dpi(4), "#467b96"),
            -- arrow("#497B96", "#889FA7"),
            -- wibox.container.background(wibox.widget { memicon, mem.widget, layout = wibox.layout.align.horizontal }, dpi(2), dpi(3), "#889fa7"),
            -- arrow("#889FA7", "#497B96"),
            -- wibox.container.background(clock, dpi(4), dpi(8), "#467b96"),
            -- arrow("#497B96", "alpha"),
            -- wibox.layout.margin(wibox.widget.systray(), 1, 1, 3, 3), --order of padding values is: left, right, top, bottom
            -- -- s.mylayoutbox,

            layout = wibox.layout.fixed.horizontal,
            -- spacing = -8,
            -- wibox.widget.systray(),
            --[[ using shapes
            pl(wibox.widget { mpdicon, theme.mpd.widget, layout = wibox.layout.align.horizontal }, "#343434"),
            pl(task, "#343434"),
            --pl(wibox.widget { mailicon, mail and theme.mail.widget, layout = wibox.layout.align.horizontal }, "#343434"),
            pl(wibox.widget { memicon, mem.widget, layout = wibox.layout.align.horizontal }, "#777E76"),
            pl(wibox.widget { cpuicon, cpu.widget, layout = wibox.layout.align.horizontal }, "#4B696D"),
            pl(wibox.widget { tempicon, temp.widget, layout = wibox.layout.align.horizontal }, "#4B3B51"),
            --pl(wibox.widget { fsicon, theme.fs and theme.fs.widget, layout = wibox.layout.align.horizontal }, "#CB755B"),
            pl(wibox.widget { baticon, bat.widget, layout = wibox.layout.align.horizontal }, "#8DAA9A"),
            pl(wibox.widget { neticon, net.widget, layout = wibox.layout.align.horizontal }, "#C0C0A2"),
            pl(binclock.widget, "#777E76"),
            --]]
            -- using separators
            --arrow(theme.bg_normal, "#343434"),
            --wibox.container.background(wibox.container.margin(wibox.widget { mailicon, mail and mail.widget, layout = wibox.layout.align.horizontal }, dpi(4), dpi(7)), "#343434"),
            --arrow("alpha", "#497B96"),
            --wibox.container.background(wibox.container.margin(wibox.widget { mpdicon, theme.mpd.widget, layout = wibox.layout.align.horizontal }, dpi(3), dpi(6)), "#497B96"),
            wibox.layout.margin(wibox.widget.systray(), 1, 1, 3, 3), --order of padding values is: left, right, top, bottom
            arrow("#282c34", "#467b96"),
            -- wibox.layout.margin(wibox.widget.textbox[text="◢"[, ignore_markup=false]]),
            -- wibox.container.background(wibox.container.margin(wibox.widget { weathericon, theme.weather.widget, layout = wibox.layout.align.horizontal }, dpi(3), dpi(3)), "#467b96"),
            wibox.container.background(wibox.container.margin(wibox.widget { brightnessicon, brightness, layout = wibox.layout.align.horizontal }, dpi(3), dpi(3)), "#467b96"),
            arrow("#467b96", "#889fa7"),
            wibox.container.background(wibox.container.margin(wibox.widget { cpuicon, cpu.widget, layout = wibox.layout.align.horizontal }, dpi(3), dpi(4)), "#889fa7"),
            arrow("#889fa7", "#467b96"),
            wibox.container.background(wibox.container.margin(wibox.widget { baticon, bat.widget, layout = wibox.layout.align.horizontal }, dpi(3), dpi(3)), "#467b96"),
            arrow("#467b96", "#889fa7"),
            wibox.container.background(wibox.container.margin(wibox.widget { tempicon, temp.widget, layout = wibox.layout.align.horizontal }, dpi(4), dpi(4)), "#889fa7"),
            -- arrow("#497B96", "#889FA7"),
            -- wibox.container.background(wibox.container.margin(wibox.widget { weathericon, theme.weather.widget, layout = wibox.layout.align.horizontal }, dpi(3), dpi(3)), "#889FA7"),
            arrow("#889FA7", "#497B96"),
            wibox.container.background(wibox.container.margin(wibox.widget { memicon, mem.widget, layout = wibox.layout.align.horizontal }, dpi(2), dpi(3)), "#497B96"),
            arrow("#497B96", "#889FA7"),
            wibox.container.background(wibox.container.margin(wibox.widget { volicon, theme.volume, layout = wibox.layout.align.horizontal }, dpi(2), dpi(3)), "#889FA7"),
            arrow("#889FA7", "#497B96"),
            wibox.container.background(wibox.container.margin(clock, dpi(4), dpi(8)), "#497B96"),
            -- arrow("#497B96", "alpha"),
            --]]
            -- wibox.layout.margin(wibox.widget.systray(), 1, 1, 3, 3), --order of padding values is: left, right, top, bottom
            -- s.mylayoutbox,

        },
    }
end

return theme
