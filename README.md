# AnduinOS default Chinese input method

Forked from [rime-ice](https://github.com/iDvel/rime-ice).

GPLv3 License.

## Install

Before:

```bash
sudo apt install ibus-rime
mkdir -p ~/.config/ibus/rime/
```

Local installation:

```bash
zip=https://gitlab.aiursoft.cn/anduin/anduinos-rime/-/archive/master/anduinos-rime-master.zip
wget $zip -O anduinos-rime.zip && unzip anduinos-rime.zip && rm anduinos-rime.zip
rsync -Aavx --update --delete ./anduinos-rime-master/assets/ ~/.config/ibus/rime/
rm -rf anduinos-rime-master
```

Global installation:

```bash
zip=https://gitlab.aiursoft.cn/anduin/anduinos-rime/-/archive/master/anduinos-rime-master.zip
wget $zip -O anduinos-rime.zip && unzip anduinos-rime.zip && rm anduinos-rime.zip
sudo mkdir -p /etc/skel/.config/ibus/rime/
sudo rsync -Aavx --update --delete ./anduinos-rime-master/assets/ /etc/skel/.config/ibus/rime/
rm -rf anduinos-rime-master
```

