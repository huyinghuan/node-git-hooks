node-git-hooks
==============

write git hooks  use nodejs

## Install

In order to use convenient， install as a globa

```shell
npm install node-git-hooks -g
```

### Getting Start

```
#!/bin/node
Hooks = require 'git-hooks'

hooks = new Hooks("path/to/app")

hooks.deployNewTag()

hooks.deployNewCommit()

hooks.deployWith("commit comment with deploy")

hooks.deployWith(/.*(comment)./*)

hooks.branch('deploy').deployNewCommit()

## hooks.branch('deploy').deployWith(comment)  
## ...

```

## Feature

Support promiss

Support deploy statu email  notification

and some other feature
