# storage
Personal docs, brain extensions and useful things
___

## Contents
* [NX](#nx)
  * [Create new nx workspace](#create-new-nx-workspace)
  * [Remove app/library](#remove-applibrary)
* [Git](#git)
  * [Prune local branches](scripts/sh/prune-local-branches.sh)
* [Velocity](#velocity)
  * [camelCase/PascalCase file name to snake-case](#camelcasepascalcase-file-name-to-snake-case)
* [Configs](#configs)
  * [Prettier](#prettier)

___

## NX
[nx.dev](https://nx.dev)

### Create new nx workspace
```shell
yarn create nx-workspace@latest --packageManager=yarn
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

## Configs
  
### Prettier
  
`.prettierrc`
```json
{
  "arrowParens": "always",
  "bracketSpacing": true,
  "jsxBracketSameLine": true,
  "jsxSingleQuote": false,
  "printWidth": 80,
  "quoteProps": "as-needed",
  "semi": false,
  "singleQuote": true,
  "tabWidth": 2,
  "trailingComma": "none",
  "useTabs": false
}
```

<div align="right">
  
  [Back to top](#storage)
  
</div>
