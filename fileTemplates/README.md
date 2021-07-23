# IntelliJ file templates


## Utils

### camelCase/PascalCase file name to snake-case
```
#set( $regex = "([a-z])([A-Z]+)")
#set( $replacement = "$1-$2")
#set( $snakeCaseName = $NAME.replaceAll($regex, $replacement).toLowerCase())
```