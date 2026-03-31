Here is your content with **improved wording (clean, professional, and corrected English)**:

---

# The Linux Scripts Project

**Name of Student:** Karan Singh

**Registration Number:** 24BAI10685

**Software Chosen:** VLC Media Player

---

## Synopsis

This project consists of a collection of Bash scripts designed to demonstrate various Linux system management and automation tasks, with a focus on VLC Media Player as the reference software.

---

## Description and Usage of Scripts

### 1. System Identity Report (`script1.sh`)

**Description:**
Displays a system report that includes student details, selected software, and system information such as kernel version, distribution name, uptime, and current user.

**Dependencies:**
Standard Linux utilities: `uname`, `whoami`, `uptime`, `cat`, `grep`, `cut`, `date`

**Instructions:**

1. Open a terminal.
2. Navigate to the script directory.
3. Make the script executable (if needed):

   ```bash
   chmod +x script1.sh
   ```
4. Run the script:

   ```bash
   ./script1.sh
   ```

---

### 2. FOSS Package Inspector (`script2.sh`)

**Description:**
Checks whether a specified open-source package (e.g., `vlc`) is installed using `dpkg` (Debian/Ubuntu) or `pacman` (Arch). It also displays the package version and a brief note about its open-source nature.

**Dependencies:**
`dpkg` or `pacman`

**Instructions:**

1. Make the script executable:

   ```bash
   chmod +x script2.sh
   ```
2. Run the script with a package name:

   ```bash
   ./script2.sh vlc
   ```

---

### 3. Permission and Disk Auditor (`script3.sh`)

**Description:**
Analyzes important system directories (such as `/etc` and `/var/log`) by displaying their sizes and permissions. It also checks the existence and permissions of the VLC configuration directory.

**Dependencies:**
`stat`, `du`, `awk`

**Instructions:**

1. Make the script executable:

   ```bash
   chmod +x script3.sh
   ```
2. Run the script:

   ```bash
   ./script3.sh
   ```

---

### 4. Log File Analyzer (`script4.sh`)

**Description:**
Searches a specified log file for a given keyword (default: "error"). It counts occurrences and displays the last five matching lines.

**Dependencies:**
`grep`, `tail`

**Instructions:**

1. Make the script executable:

   ```bash
   chmod +x script4.sh
   ```
2. Run the script with optional arguments:

   ```bash
   ./script4.sh /path/to/logfile "keyword"
   ```

   Example:

   ```bash
   ./script4.sh /var/log/syslog error
   ```

---

### 5. Open Source Manifesto Generator (`script5.sh`)

**Description:**
An interactive script that creates a personalized manifesto based on user responses to questions about open-source software.

**Dependencies:**
None (uses built-in shell commands)

**Instructions:**

1. Make the script executable:

   ```bash
   chmod +x script5.sh
   ```
2. Run the script:

   ```bash
   ./script5.sh
   ```
3. Answer the prompts as required.
4. A file named `manifesto_<username>.txt` will be generated.

---
