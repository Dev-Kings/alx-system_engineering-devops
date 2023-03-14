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
echo $(($BREATH**$LOVE)) -> displays the result of BREATH to the power LOVE
echo $((2#$BINARY)) -> coverts value stored in BINARY variable to base 10
echo {a..z}{a..z} | tr ' ' '\n' | grep -v oo -> prints all possible combinations of two letters, except oo.Letters are lower cases, from a to z
One combination per line. The output should be alpha ordered, starting with aa. Do not print oo
Your script file should contain maximum 64 characters
printf "%.2f\n" $NUM -> prints a number stored in global variable NUM with two decimal places, followed by a new line.
printf "%x\n" $DECIMAL -> converts value stored in variable DECIMAL to hexadecimal
tr 'A-Za-z' 'N-ZA-Mn-za-m' -> encodes and decodes text using the rot13 encryption. Assume ASCII.
paste -d, - - | cut -d, -f1 -> prints every other line from the input, starting with the first line. 
printf "%o\n" $(( (5#$(echo $WATER | tr '[water]' '[01234]')) + (5#$(echo $STIR | tr '[stir.]' '[01234]')) )) | tr '[01234567]' '[bestchol]' -> adds the two numbers stored in the environment variables WATER and STIR and prints the result.
WATER is in base water
STIR is in base stir.
The result should be in base bestchol
