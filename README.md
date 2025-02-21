# storage
Personal docs, brain extensions and useful things
___

## Contents
* [Terminal](#terminal)
  * [sudo with TouchID](#sudo-with-touchid)
* [NVM](#nvm)
  * [install latest stable node](#install-latest-stable-node)
  * [install latest LTS version of node (Long Term Support)](#install-latest-lts-version-of-node-long-term-support)
  * [set default version of node](#set-default-version-of-node)
  * [list remote available versions of node](#list-remote-available-versions-of-node)
  * [create .nvmrc file](#create-nvmrc-file)
* [NPM](#npm)
  * [cleanup node_modules](#cleanup-node_modules)
* [Yarn](#yarn)
  * [set project yarn version](#set-project-yarn-version)
* [NX](#nx)
  * [Create new nx workspace](#create-new-nx-workspace)
  * [Remove app/library](#remove-applibrary)
* [Git](#git)
  * [Prune local branches](scripts/sh/prune-local-branches.sh)
  * [Remove merged .gitignore files](#remove-merged-gitignore-files)
* [Docker](#docker)
  * [Cleanup / Prune](#cleanup--prune)
* [Velocity](#velocity)
  * [camelCase/PascalCase file name to snake-case](#camelcasepascalcase-file-name-to-snake-case)
* [Prettier](#prettier)
  * [.prettierrc](#prettierrc)
  * [Add Prettier to a project](#add-prettier-to-a-project)

___

## Terminal

### sudo with TouchID
```shell
sudo nano /etc/pam.d/sudo
```

Add to top:
```
auth       sufficient     pam_tid.so
```

<div align="right">
  
  [Back to top](#storage)
  
</div>

___

## NVM

### install latest stable node
```shell
nvm install stable
```

### install latest LTS version of node (Long Term Support)
```shell
nvm install --lts
```

### set default version of node
```shell
nvm alias default 22.2.0
```

### list remote available versions of node
```shell
nvm ls-remote
```

### create .nvmrc file
```shell
node -v > .nvmrc
```

<div align="right">
  
  [Back to top](#storage)
  
</div>

___

## NPM

### cleanup node_modules
```shell
npx npkill -d ~/DEV
```

<div align="right">
  
  [Back to top](#storage)
  
</div>

___

## Yarn

### set project yarn version
```shell
yarn set version stable --yarn-path
```

<div align="right">
  
  [Back to top](#storage)
  
</div>

___

## NX
[nx.dev](https://nx.dev)

### Create new nx workspace
```shell
npx create-nx-workspace@latest --pm yarn
```

### Remove app/library
```shell
yarn nx g rm *name*
```

<div align="right">
  
  [Back to top](#storage)
  
</div>

___

## Git

### Prune local branches
[prune-local-branches.sh](scripts/sh/prune-local-branches.sh)

### Remove merged .gitignore files
```shell
git rm -r --cached . && git add .
```

<div align="right">
  
  [Back to top](#storage)
  
</div>

___

## Docker

### Cleanup / Prune

```shell
sudo docker system prune -f
```

<div align="right">
  
  [Back to top](#storage)
  
</div>

___

## Javascript

<div align="right">
  
  [Back to top](#storage)
  
</div>

___

## Velocity

### camelCase/PascalCase file name to snake-case

```velocity
#set( $regex = "([a-z])([A-Z]+)")
#set( $replacement = "$1-$2")
#set( $snakeCaseName = $NAME.replaceAll($regex, $replacement).toLowerCase())
```

<div align="right">
  
  [Back to top](#storage)
  
</div>

___

## Prettier
  
### .prettierrc

```json
{
  "arrowParens": "always",
  "bracketSpacing": true,
  "bracketSameLine": true,
  "jsxSingleQuote": false,
  "printWidth": 120,
  "quoteProps": "as-needed",
  "semi": false,
  "singleQuote": true,
  "tabWidth": 2,
  "trailingComma": "none",
  "useTabs": false
}
```
  
### Add Prettier to a project

1. Install Prettier, pretty-quick and husky
```shell
yarn add -D -E prettier pretty-quick husky
```

2. Add pre-commit hook to `package.json`
```json
"husky": {
  "hooks": {
    "pre-commit": "pretty-quick --staged"
  }
},
```

<div align="right">
  
  [Back to top](#storage)
  
</div>
