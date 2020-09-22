set $mod Mod1

# FONTS

font pango:Fantasque Sans Mono 10
font pango:monospace 10

# DEFAULT BORDER

for_window [class="^.*"] border pixel 0
for_window [title="^.*"] border pixel 0

# SET GAPS

gaps inner 12
gaps outer 5

# STARTUP APPLICATIONS

exec --no-startup-id killall polybar; polybar -r bar
exec --no-startup-id feh --bg-fill ~/Pictures/lobby3.png
exec --no-startup-id volumeicon
exec --no-startup-id nm-applet
exec --no-startup-id compton
exec --no-startup-id i3-msg 'workspace 1; exec firefox'
exec --no-startup-id i3-msg 'workspace 3; exec discord;' 
exec --no-startup-id i3-msg 'workspace 3; exec thunderbird;' 

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# BINDS

bindsym $mod+Return exec i3-sensible-terminal

bindsym $mod+Shift+A kill

bindsym $mod+d exec rofi -show run -font "DejaVu Sans 10"

bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+m focus right


bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right


bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+M move right


bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right


bindsym $mod+h split h


bindsym $mod+v split v


bindsym $mod+f fullscreen toggle


bindsym $mod+s layout stacking
bindsym $mod+z layout tabbed
bindsym $mod+e layout toggle split

bindsym $mod+Shift+space floating toggle

bindsym $mod+space focus mode_toggle

bindsym $mod+q focus parent

bindsym $mod+ampersand workspace 1
bindsym $mod+eacute workspace 2
bindsym $mod+quotedbl workspace 3
bindsym $mod+apostrophe workspace 4
bindsym $mod+parenleft workspace 5
bindsym $mod+minus workspace 6
bindsym $mod+egrave workspace 7
bindsym $mod+underscore workspace 8
bindsym $mod+ccedilla workspace 9
bindsym $mod+agrave workspace 10

bindsym $mod+Shift+1 move container to workspace 1
bindsym $mod+Shift+eacute move container to workspace 2
bindsym $mod+Shift+3 move container to workspace 3
bindsym $mod+Shift+4 move container to workspace 4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+egrave move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+ccedilla move container to workspace 9
bindsym $mod+Shift+agrave move container to workspace 10

# Pulse Audio controls
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume 0 +10% #increase sound volume
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume 0 -10% #decrease sound volume
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute 0 toggle # mute sound

# Sreen brightness controls
bindsym XF86MonBrightnessUp exec bright + # increase screen brightness
bindsym XF86MonBrightnessDown exec bright - # decrease screen brightness

# Touchpad controls
bindsym XF86TouchpadToggle exec /some/path/toggletouchpad.sh # toggle touchpad

# Media player controls
bindsym XF86AudioPlay exec playerctl play
bindsym XF86AudioPause exec playerctl pause
bindsym XF86AudioNext exec playerctl next
bindsym XF86AudioPrev exec playerctl previous

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"
#i3lock
bindsym $mod+x exec --no-startup-id i3lock -i ~/Pictures/lockscreen.png
# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym m resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"


client.focused #003f4f #003f4f #fdf6e3 #6c71c4
client.focused_inactive #073642 #073642 #eee8d5 #6c71c4
client.unfocused #073642 #073642 #93a1a1 #586e75
client.urgent #d33682 #d33682 #fdf6e3 #dc322f
