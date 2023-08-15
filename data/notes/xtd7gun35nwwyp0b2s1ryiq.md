# Syntax Constructs

## Case Statement

End case with double semicolon `;;`

```sh
case $platform in
  Linux) # If the platform is Linux
    echo "You are running Linux."
    ;;
  Darwin) # If the platform is Darwin
    echo "You are running macOS."
    ;;
  MINGW*) # If the platform contains MINGW
    echo "You are running Windows with MinGW."
    ;;
  *) # If none of the above matches
    echo "Unknown platform: $platform"
    ;;
esac
```
