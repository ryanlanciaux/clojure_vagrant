# clojure_vagrant
Quick vagrant machine for playing with clojure

After pulling the repo - add a src directory (this will not be tracked by git in this project -- this is where your code should go and sync between VM and host).

```
vagrant up && vagrant ssh
> vim

Once inside vim run :PluginInstall
```

This also installs tmux and uses my standard tmux config.
