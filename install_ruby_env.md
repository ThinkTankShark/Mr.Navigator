#Xcode Command Line Tools

`Xcode > Preferences > Downloads > Command Line Tools`


####Homebrew

```bash
# install package manager
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install homebrew packages
brew install \
tree \
node \
ssh-copy-id \
wget \
jpegoptim \
pngcrush \
colordiff \
imagemagick \
graphicsmagick \
ack \
caskroom/cask/brew-cask
```
####Homebrew Web Server Packages [optional]
```bash
brew install \
rabbitmq \
dnsmasq \
nginx \
mariadb \
redis \
memcached \
libmemcached \
```

####Homebrew Cask Apps & Fonts

```bash
# add support for fonts
brew tap caskroom/fonts

#add dev/beta versions
brew tap caskroom/versions

#install mac apps & fonts [optional]
brew cask install \
font-source-code-pro \
blueharvest \
sublime-text-dev \
virtualbox \
iterm2-beta \
sequel-pro \
querious \
imageoptim \
imagealpha \
launchrocket
```

#Shell [optional]

Switch to z-shell
---------------

```bash
brew install zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
```

Update .zshrc
-------------

```bash
subl ~/.zshrc
```

```bash
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="candy"
plugins=(git osx rails3 ruby github node npm brew)
source $ZSH/oh-my-zsh.sh
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin:/usr/X11/bin
```

Install rvm
-------------

```bash
\curl -L https://get.rvm.io | bash -s stable
rvm requirements
```
OR
Install rbenv
-------------
```bash
brew install rbenv
```

Install rubies
-------------

```bash
rvm install 2.2.3 # OR
rbenv install 2.2.3
rbenv global 2.2.3
```

# OS X Preferences

```bash
# Enable character repeat on keydown
defaults write -g ApplePressAndHoldEnabled -bool false

# Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 12

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Disable window animations ("new window" scale effect)
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Turn on dashboard-as-space
defaults write com.apple.dashboard enabled-state 2

# Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0

# Set default Finder location to home folder (~/)
defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Disable ext change warning
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Use current directory as default search scope in Finder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Show Status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true && \
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true && \
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true && \
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Trackpad: map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2 && \
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true && \
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1 && \
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true && \
defaults write com.apple.Safari IncludeDevelopMenu -bool true && \
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true && \
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true && \
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Show absolute path in finder's title bar. 
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES

# Enable AirDrop over Ethernet and on unsupported Macs
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# Disable WebkitNightly.app's homepage
defaults write org.webkit.nightly.WebKit StartPageDisabled -bool true
```


Set hostname [optional]
------------

`sudo scutil --set HostName Work`


#Git

Setup Github
------------

```bash
ssh-keygen -t rsa -C "g3dinua@gmail.com"

#copy ssh key to github.com
subl ~/.ssh/id_rsa.pub

#test connection
ssh -T git@github.com

#set git config values
git config --global user.name "YOUR NAME"
git config --global user.email "YOUR EMAIL"

git config --global core.editor "subl -w"
git config --global color.ui true
```


#Sublime Text

Add Sublime Text CLI
--------------------

```bash
sudo mkdir -p "/usr/local/bin/" && ln -s "/Applications/Sublime Text 3.app/Contents/SharedSupport/bin/subl" "/usr/local/bin/subl"
```

Create Sublime Alias to subl(Sublime 3)
--------------------

```
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

```


Settings
--------

```json
{
	"always_show_minimap_viewport": true,
	"bold_folder_labels": true,
	"close_windows_when_empty": true,
	"default_encoding": "UTF-8",
	"default_line_ending": "unix",
	"ensure_newline_at_eof_on_save": true,
	"fallback_encoding": "Cyrillic (Windows 1251)",
	"font_face": "Mensch",
	"font_size": 15,
	"highlight_line": true,
	"highlight_modified_tabs": true,
	"ignored_packages":
	[
		"Vintage"
	],
	"indent_guide_options":
	[
		"draw_normal",
		"draw_active"
	],
	"margin": 2,
	"material_theme_accent_lime": true,
	"material_theme_accent_orange": true,
	"material_theme_accent_purple": true,
	"material_theme_accent_red": true,
	"material_theme_accent_yellow": true,
	"material_theme_bold_tab": true,
	"material_theme_disable_fileicons": true,
	"material_theme_disable_folder_animation": true,
	"material_theme_disable_tree_indicator": true,
	"material_theme_small_statusbar": true,
	"material_theme_small_tab": true,
	"open_files_in_new_window": false,
	"overlay_scroll_bars": "enabled",
	"rulers":
	[
		80
	],
	"show_full_path": true,
	"show_tab_close_buttons": true,
	"soda_classic_tabs": false,
	"soda_folder_icons": true,
	"spell_check": false,
	"tab_size": 2,
	"translate_tabs_to_spaces": true,
	"trim_trailing_white_space_on_save": true,
	"use_simple_full_screen": true,
	"word_separators": "./\\()\"'-:,.;<>~!@#%^&*|+=[]{}`~?",
	"word_wrap": "true"
}


```


Key Bindings
------------

```json
[
	{ "keys": ["super+b"], "command": "expand_selection", "args": {"to": "brackets"} },
	{ "keys": ["super+f"], "command": "show_panel", "args": {"panel": "replace"} },
	{ "keys": ["super+alt+f"], "command": "show_panel", "args": {"panel": "find"} }
]
```

#Server

Install pow
---------------
```bash
curl get.pow.cx | sh
```


MySQL
-----

```bash
brew install mysql
```


MySQL Settings
--------------

```bash
# start mysql
mysql.server start

# secure mysql
mysql_secure_installation

# connecto to mysql
mysql -uroot
```


PostgreSQL
-----

```bash
brew install postgres
```


PostgreSQL Settings
--------------

```bash
# connect to psql
psql -U `whoami` -d postgres

# create user and databases
createuser user
createdb -Ouser -Eutf8 -T template0 user_development
createdb -Ouser -Eutf8 -T template0 user_test
```

Install Rails 4.2.4
--------------

```
gem install rails -v 4.2.4
```

```
# Rails is now installed, but in order for us to use the rails executable, we need to tell rbenv to see it
rbenv rehash
```

```
rails -v
# Rails 4.2.4
```

```
# And now for the moment of truth. Let's create your first Rails application:

rails new myapp

#### If you want to use MySQL
rails new myapp -d mysql

#### If you want to use Postgres
# Note you will need to change config/database.yml's username to be
# the same as your OSX user account. (for example, mine is 'chris')
rails new myapp -d postgresql

# Move into the application directory
cd myapp

# If you setup MySQL or Postgres with a username/password, modify the
# config/database.yml file to contain the username/password that you specified

# Create the database
rake db:create

rails server
```


Manage homebrew installed packages with LaunchRocket [System Preferences > LaunchRockets > Scan Homebrew]
--------------

![LaunchRocke Screenshot](https://raw.githubusercontent.com/jimbojsb/launchrocket/master/screenshots/LaunchRocket.png)

