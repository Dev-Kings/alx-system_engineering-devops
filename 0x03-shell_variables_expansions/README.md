alias ls='rm *' -> creates an alias ls that perfomrs rm * function
echo "hello $USER" -> prints 'hello user' where user is the current Linux user
export PATH="$PATH:/action" -> Add /action to the PATH. /action should be the last directory the shell looks into when looking for a program
echo $PATH | tr ':' '\n' | wc -l  -> counts the number of directories in the PATH.
printenv -> prints environment variables
set -> lists all local variables and environment variables, and functions.
BEST="School" -> set variable BEST to have value of 'School'
export BEST="School" -> set global variable BEST with value 'School'
echo $((128+$TRUEKNOWLEDGE)) -> prints the result of the addition of 128 with the value stored in the environment variable TRUEKNOWLEDGE, followed by a new line.
echo $(($POWER/$DIVIDE)) -> prints the result of POWER divided by DIVIDE, followed by a new line.
