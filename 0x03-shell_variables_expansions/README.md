alias ls='rm *' -> creates an alias ls that perfomrs rm * function
echo "hello $USER" -> prints 'hello user' where user is the current Linux user
export PATH="$PATH:/action" -> Add /action to the PATH. /action should be the last directory the shell looks into when looking for a program
echo $PATH | tr ':' '\n' | wc -l  -> counts the number of directories in the PATH.
