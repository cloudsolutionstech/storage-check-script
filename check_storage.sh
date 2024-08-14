#!/bin/bash

# Start the storage check process
echo "Start the storage check process..."

# Redirect all output to the storage_report.txt file in the home directory
exec >> ~/storage_report.txt

# Print the current date
echo "Date: $(date)"
echo "###################################"

# Define the partition to check
part=/dev/sda1

# Iterate over the defined partition
for i in $part
do
    # Check the percentage of disk space used
    checkper=$(df -h | grep $i | awk '{print $5}' | cut -d '%' -f1)

    # Check the disk usage percentage and print appropriate messages
    if [ $checkper -ge 95 ] && [ $checkper -le 100 ]; then
        echo "ALERT: $i is $checkper% full! Suggest immediate action!"
    elif [ $checkper -ge 50 ] && [ $checkper -lt 95 ]; then
        echo "CAUTION: $i is $checkper% full! Consider freeing up some space."
    elif [ $checkper -lt 50 ]; then
        echo "$i is $checkper% full. No action required."
    else
        echo "Encountered an error. Status code: $?" >&2
        exit $?
    fi
done

# End of script
echo "Storage check process completed."

