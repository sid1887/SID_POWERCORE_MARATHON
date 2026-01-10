logs_list = []
key = True

while key:
    log = input("Enter the logs here (quit --> press q): ")

    if log == 'q':
        key = False
        print("the end")
        break

    log_split = [part.strip() for part in log.split("|")]

    dict_log = {
        "time": log_split[0],
        "Level": log_split[1],
        "message": log_split[2]
    }

    logs_list.append(dict_log)

    # Count severity
    no_of_info = sum(1 for e in logs_list if e["Level"] == "INFO")
    no_of_warning = sum(1 for e in logs_list if e["Level"] == "WARNING")
    no_of_error = sum(1 for e in logs_list if e["Level"] == "ERROR")

    # Critical failure detection
    consecutive_errors = 0
    critical = False

    for e in logs_list:
        if e["Level"] == "ERROR":
            consecutive_errors += 1
            if consecutive_errors >= 2:
                critical = True
                break
        elif e["Level"] == "INFO":
            consecutive_errors = 0

    print("CRITICAL FAILURE DETECTED" if critical else "System stable")
    print(f"Total INFO: {no_of_info}, WARNING: {no_of_warning}, ERROR: {no_of_error}")


# 2026-01-15 10:03:21 | INFO | System booted
# 2026-01-15 10:04:10 | WARNING | High memory usage
# 2026-01-15 10:05:44 | ERROR | Disk not found
# 2026-01-15 10:06:01 | INFO | Retrying disk scan
# 2026-01-15 10:06:30 | ERROR | Disk not found
# 2026-01-15 10:06:45 | ERROR | Disk not found
# 2026-01-15 10:07:00 | INFO | System halted
