# Log Analysis Script

This Bash script provides a simple interface to analyze system log files and extract specific information such as errors, warnings, and login attempts.

## Features

1. Show all errors from the log file
2. Show all warnings from the log file
3. Show all login attempts from the log file
4. Exit the script

## Usage

### Running the Script

1. Clone the repository or download the script to your local machine.
2. Make the script executable:
    ```bash
    chmod +x log_analysis.sh
    ```
3. Run the script with superuser privileges:
    ```bash
    sudo ./log_analysis.sh  /path/to/logs
    ```

### Examples
```text
General System: /var/log/syslog, /var/log/messages
Authentication & Security: /var/log/auth.log, /var/log/faillog, /var/log/secure
Web Servers: /var/log/nginx/, /var/log/apache2/
Database Servers: /var/log/mysql/
Daemons & Services: /var/log/daemon.log, /var/log/cron.log
Kernel & Boot: /var/log/kern.log, /var/log/boot.log
Email Services: /var/log/mail.log, /var/log/mail.err
Login Records: /var/log/btmp, /var/log/wtmp


