echo 'Hello, World' -> write text to stdoutput
echo "\"Ôo'" -> output "Ôo' to stdoutput
cat /etc/passwd -> output contents of /etc/passwd file
cat /etc/passwd /etc/hosts -> display content of /etc/passwd and /etc/hosts as merged
tail -10 /etc/passwd -> display last 10 lines of /etc/passwd file
head -10 /etc/passwd -> display first 10 lines of /ect/passwd file
cat iacta | head -2 | tail -1 -> displays thrid line of iacta file
echo "Best School" > \\\*\\\\"'\"Best School\"\\'"\\\\\*\$\\\?\\\*\\\*\\\*\\\*\\\*\:\) -> creates a file named exactly \*\\'"Best School"\'\\*$\?\*\*\*\*\*:) containing the text Best School ending by a new line.
echo | ls -la ls_cwd_content -> writes into the file ls_cwd_content the result of the command ls -la. If the file ls_cwd_content already exists, it should be overwritten. If the file ls_cwd_content does not exist, create it.
echo | tail -1 >> iacta -> duplicates the last line of the file iacta
find . -type f -name '*.js' -delete -> deletes all the regular files (not the directories) with a .js extension that are present in the current directory and all its subfolders
find . -type d -not -name '.' | wc -l -> counts the number of directories and sub-directories in the current directory.

The current and parent directories should not be taken into account
Hidden directories should be counted
s -t1 | head -n 10 -> displays the 10 newest files in the current directory.

Requirements:

One file per line
Sorted from the newest to the oldest

grep -i "root" /etc/passwd -> Displays lines containing the pattern “root” from the file /etc/passwd
grep -c -i "bin" /etc/passwd -> Display the number of lines that contain the pattern “bin” in the file /etc/passwd
grep -i "^[a-z]" /etc/ssh/sshd_config -> Display all lines of the file /etc/ssh/sshd_config starting with a letter.
include capital letters as well
tr "A" "Z" | tr "c" "e" -> Replace all characters A and c from input to Z and e respectively.
tr -d "cC" -> Create a script that removes all letters c and C from input.
rev -> reverse its input.
