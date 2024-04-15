import os
import subprocess
from datetime import datetime
from kitty.fast_data_types import Screen, add_timer, get_options
from kitty.tab_bar import DrawData, ExtraData, TabBarData, TabAccessor, draw_attributed_string, Formatter
from kitty.utils import color_as_int
from kitty.boss import get_boss

MAGNIFYING_GLASS_ICON = "󰍉"
LEFT_SEP, RIGHT_SEP = ("", "")
RIGHT_MARGIN = 1
REFRESH_TIME = 1


def draw_tab(
    draw_data: DrawData,
    screen: Screen,
    tab: TabBarData,
    before: int,
    max_title_length: int,
    index: int,
    is_last: bool,
    extra_data: ExtraData
) -> int:

    is_hyprland = get_window_manager() == "Hyprland"

    if is_hyprland and before == 0 and is_last:
        return 0

    active_wd = ""
    while active_wd == "":
        active_wd = os.path.basename(TabAccessor(tab.tab_id).active_wd)

    draw_separator(draw_data, screen, LEFT_SEP)
    screen.draw(" ")
    screen.draw(active_wd)
    if tab.layout_name == "stack":
        screen.draw(" ")
        screen.draw(MAGNIFYING_GLASS_ICON)

    screen.draw(" ")
    draw_separator(draw_data, screen, RIGHT_SEP + " ")

    if is_hyprland:
        draw_right_status(screen, is_last, draw_clock())

    return screen.cursor.x


def as_rgb(x: int) -> int:
    return (x << 8) | 2


def draw_separator(draw_data: DrawData, screen: Screen, separator: str) -> None:
    orig_bg = screen.cursor.bg
    orig_fg = screen.cursor.fg
    screen.cursor.bg = as_rgb(color_as_int(draw_data.default_bg))
    screen.cursor.fg = orig_bg
    screen.draw(separator)
    screen.cursor.bg = orig_bg
    screen.cursor.fg = orig_fg

    # Function to get the name of the current window manager


def get_window_manager():
    try:
        # Use the 'loginctl' command to find the current session
        session = subprocess.check_output("loginctl show-session $(loginctl | grep $(whoami) | awk '{print $1}') -p Type", shell=True).decode().strip()
        
        # Check if the session type is 'wayland'
        if 'wayland' in session:
            # Use 'env' to print environment variables and grep for 'XDG_SESSION_DESKTOP'
            wm_info = subprocess.check_output("env | grep XDG_CURRENT_DESKTOP", shell=True).decode().strip()
            wm_name = wm_info.split('=')[1] if '=' in wm_info else 'Unknown'
            return wm_name
        else:
            return 'Not a Wayland session'
    except subprocess.CalledProcessError as e:
        return f'An error occurred: {e}'


def redraw_tab_bar(_):
    tm = get_boss().active_tab_manager
    if tm is not None:
        tm.mark_tab_bar_dirty()


timer_id = None
right_status_length = -1
opts = get_options()
date_color = as_rgb(color_as_int(opts.color8))
clock_color = as_rgb(color_as_int(opts.color15))


def draw_clock():
    date = datetime.now().strftime(" %Y/%m/%d")
    clock = datetime.now().strftime(" %H:%M")

    global timer_id
    global right_status_length

    if timer_id is None:
        timer_id = add_timer(redraw_tab_bar, REFRESH_TIME, True)

    right_status_length = RIGHT_MARGIN
    cells = [(date_color, date)]
    cells.append((clock_color, clock))

    for cell in cells:
        right_status_length += len(str(cell[1]))

    return cells


def draw_right_status(screen: Screen, is_last: bool, cells: list) -> int:
    if not is_last:
        return 0
    draw_attributed_string(Formatter.reset, screen)
    screen.cursor.x = screen.columns - right_status_length
    screen.cursor.fg = 0
    for color, status in cells:
        screen.cursor.fg = color
        screen.draw(status)
    screen.cursor.bg = 0
    return screen.cursor.x
