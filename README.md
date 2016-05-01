This is a little helper script I use for ZSH to easily jump between various
projects. I saw something like that during a presentation by Jess Frazelle
(@jfrazelle) at CraftConf 2016 where she used a command called "gogo" to jump to
a folder that was on her GOPATH.

Since I'm still jumping from one environment to the next (and that all the
time), I thought it would be nice to have something like that but change the
semantics a bit by letting the script search through multiple folders for a
child folder with the respective name.

So how do you use it? As I'm using antigen this is mostly targeted at that. So
adding following lines to your .zshrc should normally do the trick:

```
export PROJECT_DIRECTORIES=~/projects:$GOPATH/src/github.com/$USER
antigen bundle zerok/cdp
```

The `$PROJECT_DIRECTORIES` varialble is where you specify all the directories
that cdp should scan and build an autocompletion index for.

I usually don't do all that much shell scripting, so sorry if you feel offended
when reading the code 😊
