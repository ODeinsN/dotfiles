# dotfiles
## Guide Source
[How to Store Dotfiles - A Bare Git Repository | Atlassian Git Tutorial](https://www.atlassian.com/git/tutorials/dotfiles)

## Installation

### 1. Clone this repository inside it as a bare directory
With HTTP:
```bash
git clone --bare https://github.com/ODeinsN/dotfiles.git
```
With SSH
```
git clone --bare git@github.com:ODeinsN/dotfiles.git
```

### 2. Create the 'config' alias and add it to .bashrc
```bash
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
```
```bash
echo "alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'" >> .bashrc
```

### 3. Checkout the branch
```bash
config checkout
```

### 4. Hide untracked Files
```bash
config config --local status.showUntrackedFiles no
```
