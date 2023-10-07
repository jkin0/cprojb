# cprojb

A simple C project builder script.

## Installation

1. Download the shell script via the [releases page](https://github.com/jkin0/cprojb/releases/latest) or with wget:

```sh
wget https://raw.githubusercontent.com/jkin0/cprojb/master/cprojb.sh
```

2. Give the script permissions:

```sh
chmod +x ./cprojb.sh
```

3. Make the script global:

```sh
sudo mv cprojb.sh /usr/bin/cprojb
```

## Usage

```sh
cprojb <[project_name], [flag]>
```

### Flags

- ```-h``` - show help information
- ```-v``` - show cprojb version

## Example

```sh
$ cprojb test
created directory 'test'
hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint: 
hint:   git config --global init.defaultBranch <name>
hint: 
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint: 
hint:   git branch -m <name>
Initialised empty Git repository in /home/joshua/Documents/cprojb/test/.git/
test: created src directory
test: created src/main.c
test: created Makefile
test: created .gitignore
test: created README.md
cprojb: successfully created project 'test'
```
