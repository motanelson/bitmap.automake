from datetime import datetime
parsed_date=None
date_string=""
date_strings=""
parsed_date2=[]
parsed_date3=None
date_string5=None
counter=0
true=True
print("\033c\033[43;30m")
strs=str(datetime.now())
strs=strs.split(".")
print("today \n"+str(strs[0]))

print("date  ? ")
while true:
    try:
         date_string =input("")
         date_string5=date_string+" 1:00:00"
         
         parsed_date = datetime.strptime(date_string5, "%Y-%m-%d %H:%M:%S")
         true=False
    except:
         print ("incorect data")
true=True

print("time in  ? ")

while true:
    try:
         date_strings =input("")
        
         parsed_date3=datetime.strptime(date_string+" "+date_strings, "%Y-%m-%d %H:%M:%S")
         parsed_date2 =parsed_date2+ [parsed_date3]
         
         print("time out  ? ")

    except:
         print ("incorect data")
    if len(parsed_date2)>1:
        true=False

parsed_date3=parsed_date2[1]-parsed_date2[0]
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
s=str(parsed_date2[0])+","+str(parsed_date2[1])+","+str(parsed_date3)+","+str(job_id)+","+job_disignation+","+str(worker_id)+","+str(price)+","+str(total)+"\n"
f1=open("registry.csv","a")
f1.write(s)
f1.close()
