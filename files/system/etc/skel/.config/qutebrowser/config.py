import os

config.load_autoconfig()
# Enable dark mode
config.set("colors.webpage.darkmode.enabled", True)

# Enable access to system clipboard for copy buttons
config.set("content.javascript.clipboard", "access")

# My Custom keybinds
config.bind('<Ctrl-Shift-d>',
            'hint links spawn --detach mpv {hint-url} --force-window yes')
config.bind('xb', 'config-cycle statusbar.show always never')
config.bind('xt', 'config-cycle tabs.show always never')
config.bind(
    'xx', 'config-cycle statusbar.show always never;; config-cycle tabs.show always never')
config.bind('<Alt-Left>', 'back')
config.bind('<Alt-Right>', 'forward')
config.bind('<Alt-1>', 'tab-select 1')
config.bind('<Alt-2>', 'tab-select 2')
config.bind('<Alt-3>', 'tab-select 3')
config.bind('<Alt-4>', 'tab-select 4')
config.bind('<Alt-5>', 'tab-select 5')
config.bind('<Alt-6>', 'tab-select 6')
config.bind('<Alt-7>', 'tab-select 7')
config.bind('<Alt-8>', 'tab-select 8')
config.bind('<Alt-9>', 'tab-focus last')

home = os.path.expanduser('~')  # defining home directory for custom start page


#
# QUTEBROWSER CUSTOM WORKSPACES SCRIPT
#
#config.source("qutebrowser_workspace_manager.py")
#
#for i in range(1, 6):
#    config.bind(f'<Ctrl-Shift-{i}>', f'switch_workspace {i}')


# Setting default page for when opening new tabs or new windows with
# commands like :open -t and :open -w .
c.url.default_page = 'file://' + home + '/Projects/startpage/index.html'
c.url.start_pages = 'file://' + home + '/Projects/startpage/index.html'

config.set('content.local_content_can_access_remote_urls', True)
# Search engines which can be used via the address bar.  Maps a search
# engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
# placeholder. The placeholder will be replaced by the search term, use
# `{{` and `}}` for literal `{`/`}` braces.  The following further
# placeholds are defined to configure how special characters in the
# search terms are replaced by safe characters (called 'quoting'):  *
# `{}` and `{semiquoted}` quote everything except slashes; this is the
# most   sensible choice for almost all search engines (for the search
# term   `slash/and&amp` this placeholder expands to `slash/and%26amp`).
# * `{quoted}` quotes all characters (for `slash/and&amp` this
# placeholder   expands to `slash%2Fand%26amp`). * `{unquoted}` quotes
# nothing (for `slash/and&amp` this placeholder   expands to
# `slash/and&amp`).  The search engine named `DEFAULT` is used when
# `url.auto_search` is turned on and something else than a URL was
# entered to be opened. Other search engines can be used by prepending
# the search engine name to the search term, e.g. `:open google
# qutebrowser`.
# Type: Dict
# c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}', 'am': 'https://www.amazon.com/s?k={}', 'aw': 'https://wiki.archlinux.org/?search={}', 'goog': 'https://www.google.com/search?q={}', 'hoog': 'https://hoogle.haskell.org/?hoogle={}', 're': 'https://www.reddit.com/r/{}', 'ub': 'https://www.urbandictionary.com/define.php?term={}', 'wiki': 'https://en.wikipedia.org/wiki/{}', 'yt': 'https://www.youtube.com/results?search_query={}'}
c.url.searchengines = {'DEFAULT': 'https://search.brave.com/search?q={}', 'aw': 'https://wiki.archlinux.org/?search={}',
                       'ddg': 'https://duckduckgo.com/?q={}', 'wiki': 'https://en.wikipedia.org/wiki/{}', 'yt': 'https://www.youtube.com/results?search_query={}'}

#
#
# VISUAL CUSTOMISATION OPTIONS
#
#

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
# Type: List of QtColor, or QtColor
c.colors.completion.fg = ['#51afef', 'white', 'white']

# Background color of the completion widget for odd rows.
# Type: QssColor
c.colors.completion.odd.bg = '#1c1f24'

# Background color of the completion widget for even rows.
# Type: QssColor
c.colors.completion.even.bg = '#232429'

# Foreground color of completion widget category headers.
# Type: QtColor
c.colors.completion.category.fg = '#51afef'

# Background color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.bg = 'qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 #000000, stop:1 #232429)'

# Top border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.top = '#3f4147'

# Bottom border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.bottom = '#3f4147'

# Foreground color of the selected completion item.
# Type: QtColor
c.colors.completion.item.selected.fg = '#282c34'

# Background color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.bg = '#e0e0e0'

# Foreground color of the matched text in the selected completion item.
# Type: QtColor
c.colors.completion.item.selected.match.fg = '#467b96'

# Foreground color of the matched text in the completion.
# Type: QtColor
c.colors.completion.match.fg = '#467b96'

# Color of the scrollbar handle in the completion view.
# Type: QssColor
c.colors.completion.scrollbar.fg = 'white'

# Background color for the download bar.
# Type: QssColor
c.colors.downloads.bar.bg = '#282c34'

# Background color for downloads with errors.
# Type: QtColor
c.colors.downloads.error.bg = '#ff6c6b'

# Font color for hints.
# Type: QssColor
c.colors.hints.fg = '#282c34'

# Font color for the matched part of hints.
# Type: QtColor
c.colors.hints.match.fg = '#46d9ff'

# Background color of an info message.
# Type: QssColor
c.colors.messages.info.bg = '#282c34'

# Background color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.bg = '#282c34'

# Foreground color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.fg = '#282c34'

# Background color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.bg = '#46d9ff'

# Background color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.bg = '#34426f'

# Background color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.bg = '#282c34'

# Foreground color of the URL in the statusbar when there's a warning.
# Type: QssColor
c.colors.statusbar.url.warn.fg = 'yellow'

# Background color of the tab bar.
# Type: QssColor
c.colors.tabs.bar.bg = '#1c1f34'

# Background color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.bg = '#282c34'

# Background color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.bg = '#282c34'

# Background color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.bg = '#282c34'

# Background color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.bg = '#282c34'

# Background color of pinned unselected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.odd.bg = 'seagreen'

# Background color of pinned unselected even tabs.
# Type: QtColor
c.colors.tabs.pinned.even.bg = 'darkseagreen'

# Background color of pinned selected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.selected.odd.bg = '#282c34'

# Background color of pinned selected even tabs.
# Type: QtColor
c.colors.tabs.pinned.selected.even.bg = '#282c34'

# # Default font families to use. Whenever "default_family" is used in a
# # font setting, it's replaced with the fonts listed here. If set to an
# # empty value, a system-specific monospace default is used.
# # Type: List of Font, or Font
# c.fonts.default_family = '"Source Code Pro"'

# # Default font size to use. Whenever "default_size" is used in a font
# # setting, it's replaced with the size listed here. Valid values are
# # either a float value with a "pt" suffix, or an integer value with a
# # "px" suffix.
# # Type: String
# c.fonts.default_size = '11pt'

# # Font used in the completion widget.
# # Type: Font
# c.fonts.completion.entry = '11pt "Source Code Pro"'

# # Font used for the debugging console.
# # Type: Font
# c.fonts.debug_console = '11pt "Source Code Pro"'

# # Font used for prompts.
# # Type: Font
# c.fonts.prompts = 'default_size sans-serif'

# # Font used in the statusbar.
# # Type: Font
# c.fonts.statusbar = '11pt "Source Code Pro"'
