set -e
VERSION="0.1.0"

build_project() {
    mkdir "$1"
    echo "created directory '$1'"
    cd "$1"
    git init
    mkdir src
    echo "$1: created src directory"
    touch src/main.c
    echo -e "#include <stdio.h>\n\nint main(void) {\n    printf(\"Hello world!\\\n\");\n    return 0;\n}" > src/main.c
    echo "$1: created src/main.c"
    echo -e "CC = cc\nCFLAGS = -Wall -Wextra -g\nOUT = $1\nSRCS = \$(wildcard src/*)\n\nall:\n\t\$(CC) \$(CFLAGS) -o \$(OUT) \$(SRCS)" > Makefile
    echo "$1: created Makefile"
    echo "$1" > .gitignore
    echo "$1: created .gitignore"
    echo -e "# $1\n\nTODO: write description\n\n## Installation\n\nTODO: write installation instructions\n\n## Usage\n\nTODO: write usage instructions\n\n## Development\n\nTODO: write development details\n\n## Contributing\n\n1. Fork the repo (https://github.com/your-git-user/$1/fork)\n2. Create your feature branch (\`git checkout -b my-new-feature\`)\n3. Commit your changes (\`git commit -am 'Add new feature'\`)\n4. Push to the branch (\`git push origin my-new-feature\`)\n5. Create a new Pull Request\n\n## Contributors\n\n- [Your Name](https://github.com/your-git-user) - creator and maintainer" > README.md
    echo "$1: created README.md"
    echo "cprojb: successfully created project '$1'"
}

if [ $# -gt 0 ]
then
    if [ $1 = "-h" ]
    then
        echo "usage: $0 <[project_name], [flag]>"
        echo "flags:"
        echo "    -h        show help information"
        echo "    -v        show cprojb version"
        exit 0
    elif [ $1 = "-v" ]
    then
        echo "cprojb $VERSION"
        exit 0
    fi

    build_project $1
else
    echo "error: expected [project_name] or [flag]"
    echo "use '$0 -h' for help"
    exit 1
fi