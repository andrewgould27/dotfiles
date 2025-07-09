#!/bin/bash

echo "Setting up terminal preferences..."

# Copy terminal settings
echo "Terminal settings saved to terminal/settings.json"
echo "For iTerm2: Go to Preferences > Profiles > Other Actions > Import JSON Profiles"
echo "Then import the settings.json file from the terminal/ directory"

# Set up macOS Terminal Nord theme
echo "Setting up macOS Terminal Nord theme..."

# Create Nord theme for macOS Terminal
cat > /tmp/Nord.terminal << 'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>name</key>
	<string>Nord</string>
	<key>type</key>
	<string>Window Settings</string>
	<key>BackgroundColor</key>
	<data>
	YnBsaXN0MDDUAQIDBAUGFRZYJHZlcnNpb25YJG9iamVjdHNZJGFyY2hpdmVyVCR0b3AS
	AAGGoKMHCA9VJG51bGzTCQoLDA0OVU5TUkdCXE5TQ29sb3JTcGFjZVYkY2xhc3NPECcw
	LjE4MDM5MjE1NjkgMC4yMDM5MjE1Njg2IDAuMjUwOTgwMzkyMgAQAYAC0hAREhNaJGNs
	YXNzbmFtZVgkY2xhc3Nlc1dOU0NvbG9yohIUWE5TT2JqZWN0XxAPTlNLZXllZEFyY2hp
	dmVy0RcYVHJvb3SAAQgRGiMtMjc7QUhOW2KMjpCVoKmxtL3P0tcAAAAAAAABAQAAAAAA
	AAAZAAAAAAAAAAAAAAAAAAAA2Q==
	</data>
	<key>TextColor</key>
	<data>
	YnBsaXN0MDDUAQIDBAUGFRZYJHZlcnNpb25YJG9iamVjdHNZJGFyY2hpdmVyVCR0b3AS
	AAGGoKMHCA9VJG51bGzTCQoLDA0OVU5TUkdCXE5TQ29sb3JTcGFjZVYkY2xhc3NPECcw
	Ljg0NzA1ODgyMzUgMC44NzA1ODgyMzUzIDAuOTEzNzI1NDkwMgAQAYAC0hAREhNaJGNs
	YXNzbmFtZVgkY2xhc3Nlc1dOU0NvbG9yohIUWE5TT2JqZWN0XxAPTlNLZXllZEFyY2hp
	dmVy0RcYVHJvb3SAAQgRGiMtMjc7QUhOW2KMjpCVoKmxtL3P0tcAAAAAAAABAQAAAAAA
	AAAZAAAAAAAAAAAAAAAAAAAA2Q==
	</data>
	<key>Font</key>
	<data>
	YnBsaXN0MDDUAQIDBAUGGBlYJHZlcnNpb25YJG9iamVjdHNZJGFyY2hpdmVyVCR0b3AS
	AAGGoKQHCBESVSRudWxs1AkKCwwNDg8QVk5TU2l6ZVhOU2ZGbGFnc1ZOU05hbWVWJGNs
	YXNzI0AsAAAAAAAAEBCAAoADXxAYSmV0QnJhaW5zTW9uby1SZWd1bGFy0hMUFRZaJGNs
	YXNzbmFtZVgkY2xhc3Nlc1ZOU0ZvbnSiFRdYTlNPYmplY3RfEA9OU0tleWVkQXJjaGl2
	ZXLRGhtUcm9vdIABCBEaIy0yNzxCS1JbYmlydHZ4h4yXoKeqs8bJzgAAAAAAAAEBAAAA
	AAAAABwAAAAAAAAAAAAAAAAAAADQ
	</data>
</dict>
</plist>
EOF

# Import the theme
open /tmp/Nord.terminal

echo "Terminal setup complete!"
echo "The Nord theme has been imported to Terminal.app"
