Linux

Commands:

ls - list the contents in the directory you are in. a- shows hidden directories (Hidden directories start with . -l list the full details of the directory including permissions. -R to see all contents in directory.
cd - change directory. Use "" or \ when changing to a directory with spaces in its name.
pwd - tells you which folder you are in.
touch - create a new file & update timestamp of existing file.
rm - remove file and directories. -r to remove directories that are not empty.
cp - make a copy of files and its contents.-r used to copy directories.
mv- move and rename files.
mkdir - make a directory. -p create directory within a directory. Use "" or \ to represent the space if the name of the directory is name involves spaces.
rmdir - remove empty directory.
. - the current directory.
.. - parent directory of the current directory to move up one folder level.
sudo - runs the command as super user. su switches to the root user to run multiple commands without having to keep typing sudo.
rm -rf / - remove everything in the linux file system (would need to run this command as sudo su).
echo - writing text with a selected file (text must start and end with ""). > to chose the file the text is going to be written in. 1 > will overwrite all text in the file. 2 >> will add a new line to the file. can be used to create a new file that doesn't exist and write the text into the newly created file.
cat - look at the contents in a file. Can combine the content of two files into an new file. Can also add the contents of one file into another file using >>.
grep - search for specific words inside a file (specific word must start and end with "").
apt - used to install and update software.
chsh -s - change default shell.
head - shows the first 10 lines of content a chosen file. Can use -n to see a specified number of lines in the chosen file from the top down.
tail - shows the last 10 lines of content in the chosen file. Can use -n to see the a specified number of lines in the chosen file from the bottom up.
Vim - edit existing file or create and edit non-existing file.3 main modes; command = delete text & copy lines, insert(I) = inset & edit text, visual(V) = selecting text in a visual format. press Esc to switch between modes. To exit :wq! (forced write & quit) or :q! (forced quit without saving changes). :set number/: set nonumber to add numbers to the lines.
chmod - change permissions of files & directory. Follow command with u (user), g (group), o(other/everyone) and then the + or - symbol to grand or revoke permissions to the specified file or directory at the end of the command. There are no spaces when assigning the permissions. If u,g,o are not specified it will grant that permission to everyone. Can also change permissions using numeric values. 4 = r, 2 - w, 1 = x. users goes in 100s, groups goes in 10s and other goes in 1s. To give multiple permissions, you can pair the specified sections with = followed by the permission you want to grant.
chown - change ownership of a file. Requires sudo. After command, specify new owner then the file. Can change owner and group together by specifying owner followed by : and then the group. To change ownership of directory & contents, use -R, same as changing owner and group.
chgrp - change group of a file. Follows same format as chown.
file ./* - lists the file types of all the files in the current directory.
dir ./* - lists all the files in in multiple directories.


navigate vim text editor:
h - move left
j - move down
k - move up
l - move right
0 - start of the line
$ - end of the line
w - forward by a word
b - backwards by a word
:(number) - move to specific line (command)
/(word) - search for specific word (command)
n - move to the next recuing searched word
N - move to previous reoccurring searched word
dd - delete entire line
D - Deletes anything Infront of the cursor
yy - copy entire line
p - paste entire line
u - undo last change
ctrl +r - redo



Shell - this is like a translator that translates your commands to the OS for it to run the command. different shells can be used for different purpose and provide different features.


echo $SHELL - to view what shell is being used.
cat /etc/shells - to see the shells available in the current OS.


/ - represents the root of the directory, the starting point of the linux file system.


Users:

Add new user - sudo useradd followed by the name of of the user. sudo passwd to add password and prompt to create new password. su - followed by the name of user you want to switch to change user.
sudo usermod -aG (name of group) - add user to the specified group. To add user to multiple groups, sperate the name of multiple groups with a ,.
sudo deluser (name of user) sudo - to revoke sudo permission.


Groups:

cat /etc/group - file that contains all the groups that contain in the linux file system.
sudo groupadd (group name) - create new group.
sudo gpasswd -d (name of user)(name of group) - remove specified user from specified group.
sudo groupdel (name of group) - remove group.

Standard Streams:

There are 3 standard streams, input (manually typing a command), output (results produces by a command) & error (problem encountered by a command).
2> - redirect errors to specified file.
&> - redirect standard output & error to the same file.
/dev/null - file that deletes anything that is put in it.

Environment variables:
These are stored pieces of information that linux can use.
printenv or evn - show all environment variables.
export name=(content to put in the variable) - creates a temporaty variable for the current session.
To add permanent environment vaiable, add temporary command to the shell config file.

Aliases:
alias - view current aliases. To create temporary aliase, use the command followed by name of alias, then = '' and what you want the alias to do in the quotation marks.
To create a permanent alias, add to the shell config file.


OTW Bandit passwords:

bandit0

6y2kwnwK6grgvwvpvLaa2T1cpFEKOhNR

PK8fYLZg2hnHSz83plBL1iEPKdD3QToB

7ZZ2LFrykP2zEyvBl4m3clcL7tGYJPME

xzTXq1rDJQVVAzdv5cHq1TQytTWufAMq

6C7h9GD8M6ai5nr7wo1RonrzFjj9yIrG

pXa26xhMWaC2SvDotA4r9EgZkulOeSBW

Bmnnvf82KzQlfxgAI2d1zYbr1u9pr3E3

VR1ljMayciFxbnUokuQmJFw6QC9VKtub

EjmOSvuAu7sGAHqHVcBDPirRe9T03kxl

B0s2khmbT9u0geKuOoVGW3JZKhndE3BG

pYfOY6HwUsDj5rL9UvyhU7MCmv8vN5Ro

GROozWPO8QyN0mGrjUkID0WCYkZiQxrN

qQYQiHOBPR8zR61qxYqX45quvihF2uzk

command to connect to 14 using ssh - ssh -i ~/sshkey.private -p 2220 bandit14@bandit.labs.overthewire.org

aaWecNkG4FhxJQxz07uiwzVP6bJiYS65

pbLYuZtTg4MgaqfJx8jbA9gKKGqM68A7

kS0Hf0u5HiXFwKMKFqXvPdOTNGGa0X8V

ssh -i bandit17.key -p 2220 bandit17@bandit.labs.overthewire.org

OQxXZjELndr90zuhOTDYBEomI0SZITXI

KpsOfPkcP7i1FlIExk2QEjyt6dw8dxZI

4pIjcunZ0fK2vmp3IwfG8Vf7VhxD6pOA

bW9kBv5WC3P4yoDyf12LSdGuNz5ka6hY