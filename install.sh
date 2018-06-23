#!/bin/bash

# Install lvmextui and solve dependecy if necessary

# Check distro
if cat /etc/debian* &> /dev/null; then
    os="Debian"
elif cat /etc/redhat* &> /dev/null; then
    os="Redhat"
fi

# We depend on 'dialog' package
if ! which dialog &> /dev/null; then
    echo "Installing dependency package 'dialog'"
    if [[ $os == "Debian" ]]; then
		sudo apt-get install dialog
    elif [[ $os == "Redhat" ]]; then
        sudo yum install dialog
    else
        echo "Install 'dialog' using your distro's package manager"
        exit 1
    fi      
fi

if (( $? != 0 )); then
    echo "Could not install dialog. Got error $?"
    exit 2
fi

# Copy the script to /usr/sbin which is 'secure_path' for both RHEL/CentOS and Debian
echo "Installing lvmxtui to /usr/sbin"
sudo cp src/lvmxtui /usr/sbin

if (( $? == 0 )); then
    echo "Installation complete"
else
    echo "Could not install to /usr/sbin/lvmxtui"
fi

exit 0
