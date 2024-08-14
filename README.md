# Storage Check Automation Script

## Overview

Welcome to the Storage Check Automation Script repository! This project provides a simple yet powerful bash script designed to automate the monitoring of disk usage on your Linux system. The script generates a report on your disk space usage and alerts you when storage is running low, helping to prevent potential system issues caused by insufficient disk space.

This script is particularly useful for Linux system administrators who need to maintain system health and ensure optimal performance. By automating storage checks, you can save time and avoid the risk of system downtime due to full disk space.

## Features
01. Automated Storage Check: The script automatically checks the disk usage of specified partitions.
02. Customizable Alerts: Receive alerts when disk space usage exceeds predefined thresholds.03. Detailed Logging: Outputs a detailed report with the current date, disk usage percentage, and corresponding alerts.
04. Error Handling: Includes error handling to notify you of any issues during the execution of the script.
05. Cron Job Compatible: Can be easily integrated with cron jobs for scheduled, automated checks.

## Getting Started
Prerequisites
- Operating System: Linux
- Bash: Ensure that bash is installed on your system (most Linux distributions include bash by default).

## Installation

01. Clone the Repository
Start by cloning this repository to your local machine:
```bash
git clone https://github.com/cloudsolutionstech/storage-check-script.git
cd storage-check-script
```

02. Make the Script Executable
Ensure the script has executable permissions:
```bash
chmod +x check_storage.sh
```

03. Run the Script
You can run the script manually by executing:
```bash
./check_storage.sh
```
This will generate a storage report and save it to ~/storage_report.txt.

## Usage
The script is designed to be simple and straightforward:
- Default Partition Check: By default, the script checks the /dev/sda1 partition. You can modify this in the script by changing the part=/dev/sda1 line to your desired partition.
- Output: The script logs the current date, disk usage percentage, and alerts into ~/storage_report.txt.

## Automating with Cron Jobs
To fully automate storage checks, you can schedule the script to run at regular intervals using a cron job:

01. Open the cron job configuration for the current user:
```bash
crontab -e
```

02. Add a line to schedule the script. For example, to run the script daily at midnight, add:
```bash
0 0 * * * /path/to/your/check_storage.sh
```
This ensures that the script runs automatically every day, and you’ll be alerted if your disk space is running low. You can modify the cron job as desired.

## Example Output
Here's an example of what the script's output might look like in storage_report.txt:

```bash
Date: Mon Aug 12 00:00:01 UTC 2024
###################################
/dev/sda1 is 45% full. No action required.
```

If disk space is critically low:
```bash
Date: Mon Aug 12 00:00:01 UTC 2024
###################################
ALERT: /dev/sda1 is 97% full! Suggest immediate action!
```

## Technologies Used
- Bash Scripting: The script is written entirely in bash, making it lightweight and compatible with most Linux systems.
- Linux Utilities: Utilizes standard Linux commands like df, grep, awk, and cut to check disk usage and process output.

## Contributing
Contributions are welcome! If you'd like to contribute to this project, please fork the repository and create a pull request. Whether it’s a bug fix, feature addition, or documentation improvement, your input is valuable.

01. Fork the repository
02. Create a new branch (git checkout -b feature-branch)
03. Make your changes
04. Commit your changes (git commit -m 'Add new feature')
05. Push to the branch (git push origin feature-branch)
06. Create a pull request

## License
This project is licensed under the MIT License - see the [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) for details.

## Contact
For any questions or inquiries, feel free to reach out:
- Email: info@cloudsolutionstech.com
- YouTube: [YouTube Channel](http://www.youtube.com/@cloudsolutionsIT)

## Additional Resources
- Blog Post: [Latest Tech News](https://cloudsolutionstech.com/news/)




