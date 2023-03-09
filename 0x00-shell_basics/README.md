pwd -> prints current working directory

ls -> displays content list of current directory

cd ~ -> changes working directory to user's home directory

ls -l -> displays current directory contents in a long format

ls -la -> displays current directory contents including hidden files in a long format

ls - lna -> displays current directory contents including hidden files in a long format with user and group IDs displayed numerically

mkdir /tmp/my_first_directory -> creates a directory named my_first_directory in the /tmp/ directory

mv /tmp/betty /tmp/my_first_directory/ -> move file named betty from /tmp/ to /tmp/my_first_directory

rm /tmp/my_first_directory/betty -> delete  file betty from /tmp/my_first_directory directory

rmdir /tmp/my_first_directory -> delete my_first_directory from /tmp directory

cd - -> changes working directory to the previous one

ls -la . .. /boot -> lists all files (even ones with names beginning with a period character, which are normally hidden) in the current directory and the parent of the                       working directory and the /boot directory (in this order), in long format.

file /tmp/iamafile -> prints the type of the file named iamafile in /tmp directory

ln -s /bin/ls __ls__ -> creates a symbolic link to /bin/ls, named __ls__ in the current working directory

cp -u *.html .. -> copies all the HTML files from the current working directory to the parent of the working directory, but only copies files that did not exist in the                     parent of the working directory or were newer than the versions in the parent of the working directory.

mv [[:upper:]]* /tmp/u -> moves all files beginning with an uppercase letter to the directory /tmp/u.

rm *~ -> deletes all files in the current working directory that ends with the character ~

mkdir -p welcome/to/school -> creates the directories welcome/, welcome/to/ and welcome/to/school in the current directory

ls -ampv -> lists all the files and directories of the current directory, separated by commas (,).

            Directory names end with a slash (/)
            Files and directories starting with a dot (.) are listed
            The listing is alpha ordered, except for the directories . and .. which are listed at the very beginning
            Only digits and letters are used to sort; Digits should come first
            
0 string SCHOOL School data
!:mime School  -> magic file school.mgc that can be used with the command file to detect School data files. School data files always contain the string SCHOOL at offset 0
