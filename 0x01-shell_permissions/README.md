su betty -> switch current user to user betty
whoami -> prints effective username of the current user
groups -> prints groups current user belongs
sudo chown betty hello -> changes the owner of the file hello to the user betty
touch hello -> creates an empty file hello
chmod u+x hello -> adds execute permission to owner of file hello
chmod 754 hello -> adds execute permission to the owner and the group owner, and read permission to other users, to the file hello
chmod ugo+x hello -> adds execution permission to the owner, group owner and the other users, to the file hello
chmod 007 hello -> sets the permission to the file hello as follows:

Owner: no permission at all
Group: no permission at all
Other users: all the permissions

ehmod 753 hello -> sets file mode to -rwxr-x-wx

chmod --reference=olleh hello -> sets file olleh mode to same as that of hello file

chmod -R +x . ->  adds execute permission to all subdirectories of the current directory for the owner, the group owner and all other users.

Regular files should not be changed.

mkdir -m 751 my_dir ->creates a directory called my_dir with permissions 751 in the working directory

chgrp school hello -> changes the group owner to school for the file hello

chown vincent:staff * -> changes the owner to vincent and the group owner to staff for all the files and directories in the working directory.

chown -h vincent:staff _hello -> changes the owner and the group owner of _hello to vincent and staff respectively.

The file _hello is in the working directory
The file _hello is a symbolic link
