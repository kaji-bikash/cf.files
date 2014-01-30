**Always be sure to run `rake update` after pulling to ensure plugins are updated**

## What is cf.files?


**This setup is an opinionated dotfiles taking major inspiration from YADR. YADR will make your heart sing if you are using MacVIM for RAILS development.**

  * cf.files makes some educated assumptions and based on that makes curated settings.
  * All things are vimized: irb, postres command line, etc.
  * Optimized support for Solarized color scheme only, everything guaranteed to Look Good. Your eyes will thank you.


## Installation

To get started please run:

```bash
sh -c "`curl -fsSL https://raw.github.com/kajisaap/cf.files/master/install.sh`"
```

**Note:** cf.files will automatically install all of its subcomponents. If you want to be asked
about each one, use:
```bash
sh -c "`curl -fsSL https://raw.github.com/kajisaap/cf.files/master/install.sh`" -s ask
```

* Install iTerm Solarized Colors - CF.FILES will install Solarized colorschemes into your iTerm. Go to Profiles => Colors => Load Presets to pick Solarized Dark.


### Upgrading

Upgrading is easy.

```bash
cd ~/.cf.files
git pull --rebase
rake update
```

## What's included, and how to customize?

Read on to learn what cf.file provides!

### [Homebrew](http://mxcl.github.com/homebrew/)

Homebrew is _the missing package manager for OSX_. Installed automatically.

We automatically install a few useful packages including fsad, git, zsh.

Since programmers are basically lazy, `brew update` packaged LauchAgent is also included which will not allow brew bit tree go stale.

### ZSH

Think of Zsh as a more awesome bash without having to learn anything new.
Automatic spell correction for your commands, syntax highlighting, and more.
YADR also provided lots of enhancements: CF.files adds to that.

* Vim mode and bash style `Ctrl-R` for reverse history finder
* `Ctrl-x,Ctrl-l` to insert output of last command
* Fuzzy matching - if you mistype a directory name, tab completion will fix it
* [fasd](https://github.com/clvv/fasd) integration - hit `z` and partial match for recently used directory. Tab completion enabled.
* [Prezto - the eye popping behind cf.files's zsh](http://github.com/sorin-ionescu/prezto)


### Aliases

Please feel free to edit/add to these:

    ae # alias edit
    ar # alias reload


### [Pry](http://pry.github.com/)

Pry offers a much better out of the box IRB experience with colors, tab completion, and lots of other tricks. You can also use it
as an actual debugger by installing [pry-nav](https://github.com/nixme/pry-nav).

[Learn more about cf.files's pry customizations and how to install](https://github.com/nixme/jazz_hands)

### Git Customizations:

cf.files will take over your `~/.gitconfig`, so if you want to store your usernames, please put them into `~/.gitconfig.user`

It is recommended to use this file to set your user info. Alternately, you can set the appropriate environment variables in your `~/.secrets`.

  * `git l` or `gl`- a much more usable git log
  * `git b` or `gb`- a list of branches with summary of last commit
  * `git r` - a list of remotes with info
  * `git t` or `gt`- a list of tags with info
  * `git nb` or `gnb`- a (n)ew (b)ranch - like checkout -b
  * `git cp` or `gcp`- cherry-pick -x (showing what was cherrypicked)
  * `git changelog` - a nice format for creating changelogs
  * `git recent-branches` - if you forgot what you've been working on
  * `git unstage` / `guns` (remove from index) and `git uncommit` / `gunc` (revert to the time prior to the last commit - dangerous if already pushed) aliases
  * Some sensible default configs, such as improving merge messages, push only pushes the current branch, removing status hints, and using mnemonic prefixes in diff: (i)ndex, (w)ork tree, (c)ommit and (o)bject
  * Slightly improved colors for diff

### RubyGems

A .gemrc is included. Never again type `gem install whatever --no-ri --no-rdoc`. `--no-ri --no-rdoc` is done by default.

### Tmux configuration

`tmux.conf` provides some sane defaults for tmux on Mac OS like a powerful status bar and vim keybindings.
You can customize the configuration in `~/.tmux.conf.user`.

### Vimization of everything

The provided inputrc and editrc will turn your various command line tools like mysql and irb into vim prompts. There's
also an included Ctrl-R reverse history search feature in editrc, very useful in irb, postgres command line, and etc.


### OSX Hacks

The osx file is a bash script that sets up sensible defaults for devs and power users
under osx. We know you trust DevOps.So the installation script runs the toggles without confirmation from you.
Please read through the file if you want to know what each toggle does:

    open osx_hidden_preftoggle

These hacks are Lion-centric or may not properly work with other versions. Highlights include:

  * Ultra fast key repeat rate (now you can scroll super quick using j/k)
  * No disk image verification (downloaded files open quicker)
  * Display the ~/Library folder in finder (hidden in Lion/Mountain Lion/Mavericks)
