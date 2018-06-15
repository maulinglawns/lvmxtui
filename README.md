# lvmxtui
Simple TUI wrapper for extending lvm partitions

![Screenshot](lvmxtui.png?raw=true "Screenshot")

Lists **only** lvm partitions, and gives **only** the option to extend them.

Written in Bash. Depends on the `dialog` package and, well, Bash! :) 

<h2>Installing</h2>
Clone repository. Then run the install script:
<pre>
./install.sh 
Installing dependency package 'dialog'
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following NEW packages will be installed:
  dialog
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 0 B/262 kB of archives.
After this operation, 1,138 kB of additional disk space will be used.
Selecting previously unselected package dialog.
(Reading database ... 57594 files and directories currently installed.)
Preparing to unpack .../dialog_1.3-20160828-2_amd64.deb ...
Unpacking dialog (1.3-20160828-2) ...
Setting up dialog (1.3-20160828-2) ...
Processing triggers for man-db (2.7.6.1-2) ...
Installing lvmxtui to /usr/sbin
Installation complete
</pre>

<h2>Using</h2>
Run:

`sudo lvmxtui`

<h2>Video example</h2>

https://asciinema.org/a/SuTmezd6q4YBntKM7FENboq9o

<h2>Supported platforms</h2>
Tested on Debian 9 and CentOS 7. Should work on any GNU/Linux distribution.
