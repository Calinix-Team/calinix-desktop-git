local filesystem = require('gears.filesystem')
local config_dir = filesystem.get_configuration_dir()
local utils_dir = config_dir .. 'utilities/'

return {
	-- The default applications that we will use in keybindings and widgets
	default = {
		-- Default terminal emulator
		terminal = 'alacritty',
		-- Default web browser
		web_browser = 'firefox',
		-- Default text editor
		text_editor = 'gedit',
		-- Default file manager
		file_manager = 'nautilus',
		-- Default media player
		multimedia = 'celluloid',
		-- Default game, can be a launcher like steam
		game = 'steam',
		-- Default graphics editor
		graphics = 'gimp-2.10',
		-- Default sandbox
		sandbox = 'virtualbox',
		-- Default IDE
		development = 'code',
		-- Default network manager
		network_manager = 'alacritty iwctl',
		-- Default bluetooth manager
		bluetooth_manager = 'blueberry-tray',
		-- Default power manager
		power_manager = 'xfce4-power-manager',
		-- Default GUI package manager
		package_manager = 'pamac-manager',
		-- Default locker
		lock = 'i3lock-fancy',
		-- Default quake terminal
		quake = 'alacritty --name QuakeTerminal',
		-- Default rofi global menu
		rofi_global = 'cmenu',
		-- Default app menu
		rofi_appmenu = 'cmenu'

		-- You can add more default applications here
	},

	-- List of apps to start once on start-up
	run_on_start_up = {
		-- Compositor
		'picom -b --experimental-backends --dbus --config ' ..
		config_dir .. '/configuration/picom.conf',
		-- Blueman applet
		'blueberry-tray',
		-- Polkit and keyring
		' eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)',
		-- Load X colors
		'xrdb $HOME/.Xresources',
		-- Audio equalizer
		'pulseeffects --gapplication-service',
		-- Lockscreen timer
		[[
		xidlehook --not-when-fullscreen --not-when-audio --timer 600 \
		"awesome-client 'awesome.emit_signal(\"module::lockscreen_show\")'" ""
		]]

		-- You can add more start-up applications here
	},

	-- List of binaries/shell scripts that will execute for a certain task
	utils = {
		-- Fullscreen screenshot
		full_screenshot = utils_dir .. 'xfce4-screenshooter',
		-- Area screenshot
		area_screenshot = utils_dir .. 'xfce4-screenshooter',
		-- Update profile picture
		update_profile  = utils_dir .. 'profile-image'
	}
}
