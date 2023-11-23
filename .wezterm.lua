local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.front_end = "WebGpu"
config.webgpu_power_preference = "LowPower"

config.font = wezterm.font_with_fallback {
    'Cozette',
    'CozetteVector Nerd Font',
    'SFMono Nerd Font',
    'Twemoji',
    'JetBrains Mono',
}

config.font_size = 9.0

config.color_scheme = 'Mountain: Fuji'
config.color_schemes = {
    ['Mountain: Fuji'] = {
        foreground = '#f0f0f0',
        background = '#0f0f0f',
        cursor_bg = '#f0f0f0',
        cursor_fg = '#0f0f0f',
        cursor_border = '#f0f0f0',
        selection_fg = '#0f0f0f',
        selection_bg = '#f0f0f0',
        scrollbar_thumb = '#bfbfbf',
        split = '#cacaca',

        ansi = {
            '#262626',
            '#ac8aac',
            '#8aac8b',
            '#aca98a',
            '#8a98ac',
            '#8f8aac',
            '#8aacab',
            '#e7e7e7',
        },
        brights = {
            '#4c4c4c',
            '#c49ea0',
            '#9ec49f',
            '#c4c19e',
            '#a5b4cb',
            '#a39ec4',
            '#9ec3c4',
            '#f0f0f0',
        },

        compose_cursor = '#c6a679',
    }
}

config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true

return config
