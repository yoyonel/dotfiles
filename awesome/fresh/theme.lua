-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local xrdb = xresources.get_current_theme()

local util = require("awful.util")
local gears = require("gears")
local gfs = require("gears.filesystem")
local theme = {}
local themes_path = gfs.get_configuration_dir() .. "fresh/"

theme.themes_path = themes_path

theme.panel_height  = dpi(24)

theme.font          = "Roboto 11"
theme.hotkeys_font  = "Roboto Bold 11"
theme.hotkeys_description_font  = "Roboto 11"

theme.bg_normal     = xrdb.background .. "80"
theme.bg_systray = theme.bg_normal
theme.systray_icon_spacing = dpi(4)

theme.bg_focus      = theme.bg_normal
theme.bg_urgent     = theme.bg_normal
theme.bg_minimize   = theme.bg_normal
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = xrdb.foreground
theme.fg_focus      = xrdb.color3
theme.fg_urgent     = xrdb.color1
theme.fg_minimize   = xrdb.color6

theme.border_width  = dpi(3)
theme.useless_gap   = dpi(3)
theme.border_normal = xrdb.color4
theme.border_focus  = xrdb.color3
theme.border_marked = xrdb.color5

theme.taglist_fg_occupied   = xrdb.color4
theme.tasklist_disable_icon = true
theme.notification_shape    = gears.shape.rounded_rect
theme.tasklist_align= "center"

theme.gap_single_client = false

theme.widget = {
  bg = xrdb.foreground,
  fg = xrdb.color4,
  charging = xrdb.color2,
  off = xrdb.color1
}

theme.hotkeys_modifiers_fg = xrdb.color3
theme.hotkeys_border_color = xrdb.color3
theme.hotkeys_shape = function(cr, width, height)
  gears.shape.rounded_rect(cr, width, height, 2)
end

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path.."titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path.."background.png"
theme.set_wallpaper = function(s)
  if util.file_readable(theme.wallpaper) then
    gears.wallpaper.maximized(theme.wallpaper, s, true)
  else
    gears.wallpaper.set(theme.bg_normal)
  end
end

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."layouts/fair.svg"
theme.layout_fairv = themes_path.."layouts/fair.svg"
theme.layout_floating  = themes_path.."layouts/floating.svg"
theme.layout_magnifier = themes_path.."layouts/magnifier.svg"
theme.layout_max = themes_path.."layouts/max.svg"
theme.layout_fullscreen = themes_path.."layouts/fullscreen.svg"
theme.layout_tilebottom = themes_path.."layouts/tilebottom.svg"
theme.layout_tileleft   = themes_path.."layouts/tileleft.svg"
theme.layout_tile = themes_path.."layouts/tile.svg"
theme.layout_tiletop = themes_path.."layouts/tiletop.svg"
theme.layout_spiral  = themes_path.."layouts/spiral.svg"
theme.layout_dwindle = themes_path.."layouts/spiral.svg"
theme.layout_cornernw = themes_path.."layouts/cornernw.svg"
theme.layout_cornerne = themes_path.."layouts/cornerne.svg"
theme.layout_cornersw = themes_path.."layouts/cornersw.svg"
theme.layout_cornerse = themes_path.."layouts/cornerse.svg"
theme_assets.recolor_layout(theme, xrdb.foreground)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = fresh

return theme

