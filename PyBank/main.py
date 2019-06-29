import os
import csv

csvpath = os.path.join( 'Resources', 'budget_data.csv')


with open(csvpath, newline='') as csvfile:

    csvreader = csv.reader(csvfile, delimiter=',')
    print(csvreader)

    csv_header = next(csvreader)
    #print(f"CSV Header: {csv_header}")

    maxIn=0
    maxInDate=0
    maxDe=0
    maxDeDate=0
    totalN=0
    totalV=0
    old=0
    new=0
    totalnew =0

    for row in csvreader:
  
        Date = row[0]
        num = int(row[1])
        #old = 0
        #new = current - old
        #old = current

        if old != 0 :
            new = num - old
        
        old = num

        totalN +=1
        totalV += num
        totalnew += new
        if new>maxIn: 
            maxIn=new
            maxInDate=Date
        if new<maxDe:
            maxDe=new
            maxDeDate=Date
    ave=totalnew/(totalN-1)

print("Financial Analysis")
print("----------------------------------------------")
print("Total Months: "+str(totalN))
print("Total: $"+str(totalV))
print("Average Change: $"+str(ave))
print("Greatest Increase in Profits: "+str(maxInDate)+" ($"+str(maxIn)+")")
print("Greatest Decrease in Profits: "+str(maxDeDate)+" ($"+str(maxDe)+")")

outF = open("output.txt", "w")
outF.write("Financial Analysis\n")
outF.write("----------------------------------------------\n")
outF.write("Total Months: "+str(totalN)+"\n")
outF.write("Total: $"+str(totalV)+"\n")
outF.write("Average Change: $"+str(ave)+"\n")
outF.write("Greatest Increase in Profits: "+str(maxInDate)+" ($"+str(maxIn)+")\n")
outF.write("Greatest Decrease in Profits: "+str(maxDeDate)+" ($"+str(maxDe)+")\n")
outF.close()

 
