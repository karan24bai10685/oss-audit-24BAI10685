# The Linux Scripts Project
Name of the student: Karan Singh  
24BAI10685 is the registration number.  
Software of Choice: VLC Media Player

---

## Synopsis

With an emphasis on the selected program, VLC Media Player, this repository includes a number of Bash scripts intended to illustrate different Linux system management and automation chores.

## Description and Use of Scripts

###1. Report on System Identity (`script1.sh`)

The description is:  
shows a system report including the student's information, the selected program, and current system details such the kernel version, distribution name, uptime, and current user.

Dependencies:  The standard Linux utilities include `uname`, `whoami`, `uptime`, `cat`, `grep`, `cut`, and `date`.

Instructions:
1. Launch a terminal.
2. Go to the directory where the script is located.
3. If the script isn't already executable, make it so by running ```bash ```chmod +x script1.sh ```
4. Launch the script: ```bash ./script1.sh ```

---

###  2. FOSS Package Inspector (script2.sh`)

The description is:  
uses `pacman` (Arch) or `dpkg` (Debian/Ubuntu) to determine whether a certain open-source package (such as `vlc`) is installed on the system. It offers version details as well as a succinct statement about the software's philosophy.

Dependencies:  Package manager: either dpkg or pacman

Instructions:
1. To make the script executable, run ```bash chmod +x script2.sh ```
2. Execute the script with a package name (like `vlc`) as an argument: ```bash ./script2.sh vlc ```

---

###  3. Permission and Disc Auditor (`script3.sh`)

Key system directories (`/etc`, `/var/log`, etc.) are audited by displaying their sizes and permissions. In particular, it verifies that the VLC configuration directory exists and has the necessary permissions.

Dependencies:  - `stat`, `du`, and `awk`

Instructions:
1. To make the script executable, run ```bash chmod +x script3.sh ```
2. Launch the script: ```bash ./script3.sh ```

---

###  4. Log File Analyser (`script4.sh`)

The description is:  
searches a given log file for a particular term (by default, "error"). It shows the final five matched lines after counting the occurrences.

Dependencies:  - `grep`, `tail`

Instructions:
1. Use the following command to make the script executable: ```bash chmod +x script4.sh ```
2. Execute the script with an optional keyword and the path of the log file:
   ```bash ./script4.sh /path/to/logfile "keyword" ```For instance: ```bash ./script4.sh /var/log/syslog error ```

---

###  5. Manifesto Generator for Open Source (`script5.sh`)

The description is:  
An interactive tool that generates a personal manifesto text file based on the user's responses to three questions about open-source software.

Dependencies:  None (uses built-in shell commands)

Instructions:
1. Use the following command to make the script executable: ```bash chmod +x script5.sh ```
2. Launch the script: ```bash ./script5.sh ```
3. Respond to the prompts as asked.
4. A file named manifesto_<username>.txt
