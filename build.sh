echo "Installing Rime..."
sudo apt install -y ibus-rime

echo "Copying Rime configuration files..."
rsync -Aavx --update --delete ./assets/ ~/.config/ibus/rime/
sleep 3

echo "Restarting ibus..."
ibus-daemon -drx
sleep 3

echo "Restarting ibus-daemon..."
ibus restart
sleep 3

echo "Switching to Rime input method..."
ibus engine rime

echo "Waiitng for built content to be generated..."
while [ ! -f ~/.config/ibus/rime/build/rime_ice.table.bin ]; do
    echo "Waiting for rime_ice.table.bin to be generated..."
    sleep 1
done

echo "Copying Rime build files..."
rsync -Aavx --update --delete ~/.config/ibus/rime/build/ ./dist/
sleep 3