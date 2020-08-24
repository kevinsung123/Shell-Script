### shell quick reference

[enter link description here](https://www.shellscript.sh/quickref.html)
#### command
- `= ` : string equality(cf -eq)
	-  `if [ "$foo" = "bar" ]`
- `$@` : all of current cmd's parameter(preserving whitespace and quoting)
	- `echo "My arguments are $@"`
- `$*` :   All of current command's parameters (not preserving whitespace and quoting)
	- echo "My arguments are $*"
- `-eq` : numeric equality 
	- `if [ "$foo" -eq "9" ]`
