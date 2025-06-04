# zsh-completion-Collectable-Completion
completion files from various sources, some are edited, some I created.

some completion files might originate from sources I lost track of, contact me if this is the case.

## to compile completion files
```make compile```

## to install
```echo "fpath=($PWD/ \$fpath)">> ~/.zshrc```

## dynamically generate a completion file for an executable
```executable --help | script/compgenz executable > _executable```

## License
This project is licensed under the terms of the [GNU General Public License version 3](LICENSE).

