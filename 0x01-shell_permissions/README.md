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
