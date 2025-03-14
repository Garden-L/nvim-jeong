## INSTALLATION
```bash
mkdir ~/neovim & cd ~/neovim
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux-arm64.tar.gz
sudo cp ~/neovim/bin/nvim /bin/
sudo cp -r ~/neovim/lib /lib/
sudo cp -r ~/neovim/share/ /usr/
sudo apt install -y git libnuv1-dev nodejs
git clone https://github.com/Garden-L/nvim-jeong.git ~/.config/nvim && nvim
```
