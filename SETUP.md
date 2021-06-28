<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Git](#git)
- [Python](#python)
- [vcsh](#vcsh)
- [dotfiles](#dotfiles)
- [asdf](#asdf)
- [starship](#starship)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Git
```bash
sudo add-apt-repository --yes --update ppa:git-core/ppa
curl -s -o- "https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh" | sudo bash
sudo apt install --yes git git-lfs
```

# Python
```bash
sudo add-apt-repository --yes --update ppa:deadsnakes/ppa
sudo apt install --yes python3.9 python3.9-venv
python3.9 -m pip install pip --upgrade
```

# vcsh
Homepage: <https://github.com/RichiH/vcsh>

```bash
sudo apt install --yes vcsh
```

# dotfiles
```bash
vcsh clone https://github.com/hellomaciej/dotfiles.git dotfiles -b main
```

# asdf
Homepage: <https://github.com/asdf-vm/asdf>

```bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1
```
For update run `asdf update`

# starship
Homepage: <https://starship.rs>

```bash
sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --bin-dir="${HOME}/.local/bin" --verbose
```
Rerun to update.
