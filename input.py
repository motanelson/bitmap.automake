from datetime import datetime
parsed_date=None
parsed_date2=None
parsed_date3=None
true=True
print("\033c\033[43;30m")
print("date in  ? ")
while true:
    try:
         date_string =input("")
         parsed_date = datetime.strptime(date_string, "%Y-%m-%d %H:%M:%S")
         true=False
    except:
         print ("incorect data")
true=True
print("date into  ? ")

while true:
    try:
         date_string =input("")
         parsed_date2 = datetime.strptime(date_string, "%Y-%m-%d %H:%M:%S")
         true=False
    except:
         print ("incorect data")

parsed_date3=parsed_date2-parsed_date
print(parsed_date3)
print("job id  ? ")
job_id =int(input(""))
print("job disignation  ? ")
job_disignation=input("")
print("worker id  ? ")
worker_id =int(input(""))
print("price  ? ")
price =float(input(""))
total=(parsed_date3.total_seconds()/60/60)*price
s=str(parsed_date)+","+str(parsed_date2)+","+str(parsed_date3)+","+str(job_id)+","+job_disignation+","+str(worker_id)+","+str(price)+","+str(total)+"\n"
f1=open("registry.csv","a")
f1.write(s)
f1.close()