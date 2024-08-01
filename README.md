Satoshi Nakamoto motd-generator
====

#### Satoshi Nakamoto Message of the Day ####

# Features
Displays a random quote from Satoshi Nakamoto.
Includes Bitcoin ASCII art.
Updates the MOTD at each login.

This project is a simple script to generate a Message of the Day (MOTD) with random quotes from Satoshi Nakamoto. 
The script displays the selected quote along with an Bitcoin ASCII art image whenever a user logs into the system.
Written in pure Bash. No need to install any package. Tested with the Debian and Raspbian distributions.

# Script Details
The script contains an array of quotes from Satoshi Nakamoto, the pseudonymous creator of Bitcoin. 
Each time a user logs in, the script randomly selects a quote and updates the /etc/motd file with the quote and Bitcoin ASCII art.

```bash
#!/bin/bash
quotes=(
    "A purely peer-to-peer version of electronic cash would allow online payments to be sent directly from one party to another without going through a financial institution."
    ...
    "Writing a description for this thing for general audiences is bloody hard. There’s nothing to relate it to."
)

ascii_art=$(cat <<'EOF'
⠀⠀⠀⠀⣿⡇⠀⢸⣿⡇⠀⠀⠀⠀
⠸⠿⣿⣿⣿⡿⠿⠿⣿⣿⣿⣶⣄⠀
⠀⠀⢸⣿⣿⡇⠀⠀⠀⠈⣿⣿⣿⠀
⠀⠀⢸⣿⣿⡇⠀⠀⢀⣠⣿⣿⠟⠀
⠀⠀⢸⣿⣿⡿⠿⠿⠿⣿⣿⣥⣄⠀
⠀⠀⢸⣿⣿⡇⠀⠀⠀⠀⢻⣿⣿⣧
⠀⠀⢸⣿⣿⡇⠀⠀⠀⠀⣼⣿⣿⣿
⢰⣶⣿⣿⣿⣷⣶⣶⣾⣿⣿⠿⠛⠁
⠀⠀⠀⠀⣿⡇⠀⢸⣿⡇⠀⠀
EOF
)

# Get a random quote
RANDOM=$$$(date +%s)
selected_quote=${quotes[$RANDOM % ${#quotes[@]}]}

# Write the quote to /etc/motd
echo "$ascii_art" | tee /etc/motd > /dev/null
echo "" | tee -a /etc/motd > /dev/null
echo "$selected_quote" | fold -s -w 80 | tee -a /etc/motd > /dev/null
echo "                        Satoshi Nakamoto" | tee -a /etc/motd > /dev/null
echo "" | tee -a /etc/motd > /dev/null
```


# Installation

Clone the repository. 
```bash
git clone https://github.com/mikorist/satoshi-motd-generator.git
cd satoshi-motd-generator
```

Move the script to /usr/local/bin
```bash
sudo mv motd-generator.sh /usr/local/bin/motd-generator.sh
sudo chmod +x /usr/local/bin/motd-generator.sh
```

Modify /etc/profile to include the MOTD script
Add the following line to /etc/profile:
```bash
echo '/usr/local/bin/motd-generator.sh' | sudo tee -a /etc/profile
```
This ensures that the MOTD script runs each time a user logs in.

You can remove the "last login" information. Disable the `PrintLastLog` option from the `sshd` service. Edit the `/etc/ssh/sshd_config` file and uncomment the line `#PrintLastLog yes`:
  
  ```bash
  sudo nano /etc/ssh/sshd_config
  ```
  
  Before:
  
  ```text
  #PrintLastLog yes
  ```
  
  After:
  
  ```text
  PrintLastLog no
  ```
  
  Restart the `sshd` service:
  
  ```bash
  sudo systemctl restart sshd
  ```

# Verify the MOTD

Log out and log back in to see the MOTD update with a random Satoshi Nakamoto quote.


# Contributing
Feel free to contribute by submitting pull requests to enhance the script, add more quotes, or improve the documentation.

# License
This project is licensed under the MIT License.