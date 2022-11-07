# dotfiles
## Guide Source
[How to Store Dotfiles - A Bare Git Repository | Atlassian Git Tutorial](https://www.atlassian.com/git/tutorials/dotfiles)

## Installation
### 1. Create an empty "dotfiles" directory in your home directory

```bash
mkdir ~/dotfiles 
```

### 2. Clone this repository inside it as a bare directory
With HTTP:
```bash
git clone --bare https://github.com/ODeinsN/dotfiles.git
```
With SSH
```
git clone --bare git@github.com:ODeinsN/dotfiles.git
```

### 3. Create the 'config' alias and add it to .bashrc
```bash
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
```
```bash
echo "alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'" >> .bashrc
```

### 4. Checkout the branch
```bash
config checkout
```
