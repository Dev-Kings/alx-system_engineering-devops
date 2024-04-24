# Command line for the win

## CLI File Transfer via SFTP

1. Connect to the remote server using SFTP:
   	```bash
	$ sftp david@your_server_ip_or_remote_hostname

2. Enter password when prompted.

3. After successful connection, list all files in the local directory.
	```bash
	sftp> lls

4. List files in remote directory.
	```bash
	sftp> ls /root/alx-system_engineering-devops/command_line_for_the_win/

5. Upload the files to the remote directory.
	```
	sftp> put 0-first_9_tasks.PNG /root/alx-system_engineering-devops/command_line_for_the_win/0_first_9_tasks.PNG
	sftp> put 1-next_9_tasks.PNG /root/alx-system_engineering-devops/command_line_for_the_win/1-next_9_tasks.PNG
	sftp> put 2-next_9_tasks.PNG /root/alx-system_engineering-devops/command_line_for_the_win/2-next_9_tasks.PNG

6. Verify the files have been uploaded successfully.
	```bash
	sftp> ls /root/alx-system_engineering-devops/command_line_for_the_win/

7. Exit.
	```bash
	sftp> exit
You have successfully uploaded files from local machine to remote server.
