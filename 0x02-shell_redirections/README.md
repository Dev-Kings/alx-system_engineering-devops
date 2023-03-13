echo 'Hello, World' -> write text to stdoutput
echo "\"Ôo'" -> output "Ôo' to stdoutput
cat /etc/passwd -> output contents of /etc/passwd file
cat /etc/passwd /etc/hosts -> display content of /etc/passwd and /etc/hosts as merged
tail -10 /etc/passwd -> display last 10 lines of /etc/passwd file
head -10 /etc/passwd -> display first 10 lines of /ect/passwd file
cat iacta | head -2 | tail -1 -> displays thrid line of iacta file
echo "Best School" > \\\*\\\\"'\"Best School\"\\'"\\\\\*\$\\\?\\\*\\\*\\\*\\\*\\\*\:\) -> creates a file named exactly \*\\'"Best School"\'\\*$\?\*\*\*\*\*:) containing the text Best School ending by a new line.
echo | ls -la ls_cwd_content -> writes into the file ls_cwd_content the result of the command ls -la. If the file ls_cwd_content already exists, it should be overwritten. If the file ls_cwd_content does not exist, create it. 
