import random
import csv

# Define the fields
fields = ["Activity", "Computer", "DeviceEventClassID", "DeviceProduct", "DeviceVendor", "DeviceVersion", "LogSeverity"]

# Define some sample data
activities = ["Login", "Logout", "File Access", "Network Connection", "Configuration Change"]
computers = [f"PC{i}" for i in range(1, 21)]
event_class_ids = [f"ID{i}" for i in range(1000, 1100)]
device_products = ["PaloAltoFirewall"]
device_vendors = ["PaloAlto"]
device_versions = ["8.1.0", "9.0.0", "10.0.0"]
log_severities = ["Low", "Medium", "High", "Critical"]

# Create the data
data = []
for _ in range(100):
    row = {
        "Activity": random.choice(activities),
        "Computer": random.choice(computers),
        "DeviceEventClassID": random.choice(event_class_ids),
        "DeviceProduct": random.choice(device_products),
        "DeviceVendor": random.choice(device_vendors),
        "DeviceVersion": random.choice(device_versions),
        "LogSeverity": random.choice(log_severities),
    }
    data.append(row)

# Write to CSV file
with open("cef_sample.csv", "w", newline="") as csvfile:
    writer = csv.DictWriter(csvfile, fieldnames=fields)
    writer.writeheader()
    for row in data:
        writer.writerow(row)

print("CEF sample created successfully.")
