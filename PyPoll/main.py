import os
import csv

csvpath = os.path.join( 'Resources', 'election_data.csv')


with open(csvpath, newline='') as csvfile:

    csvreader = csv.reader(csvfile, delimiter=',')
    print(csvreader)

    csv_header = next(csvreader)


    totalvote =0

    totalvote1 =0
    totalvote2 =0
    totalvote3 =0
    totalvote4 =0 

    for row in csvreader:
        totalvote +=1
        
        VoteCan=row[2]

        if VoteCan=="Khan":
            totalvote1 +=1
        if VoteCan=="Correy":
            totalvote2 +=1        
        if VoteCan=="Li":
            totalvote3 +=1
        if VoteCan=="O'Tooley":
            totalvote4 +=1

    if totalvote1>totalvote2 and totalvote1>totalvote3 and totalvote1>totalvote4:
        Winnum="Khan"
    if totalvote2>totalvote1 and totalvote2>totalvote3 and totalvote2>totalvote4:
        Winnum="Correy"
    if totalvote3>totalvote1 and totalvote3>totalvote2 and totalvote3>totalvote4:
        Winnum="Li"
    if totalvote4>totalvote1 and totalvote4>totalvote2 and totalvote4>totalvote3:
        Winnum="O'Tooley"

pertotalvote1=totalvote1/totalvote*100
pertotalvote2=totalvote2/totalvote*100
pertotalvote3=totalvote3/totalvote*100
pertotalvote4=totalvote4/totalvote*100


print("Election Results")
print("----------------------------------------------")
print("Total Votes: "+str(totalvote))
print("----------------------------------------------")
print("Khan: "+str(pertotalvote1)+"% ("+str(totalvote1)+")")
print("Correy: "+str(pertotalvote2)+"% ("+str(totalvote2)+")")
print("Li: "+str(pertotalvote3)+"% ("+str(totalvote3)+")")
print("O'Tooley: "+str(pertotalvote4)+"% ("+str(totalvote4)+")")
print("----------------------------------------------")
print("Winner: "+Winnum)
print("----------------------------------------------")

outF = open("output.txt", "w")
outF.write("Election Results\n")
outF.write("----------------------------------------------\n")
outF.write("Total Votes: "+str(totalvote)+"\n")
outF.write("----------------------------------------------\n")
outF.write("Khan: "+str(pertotalvote1)+"% ("+str(totalvote1)+")"+"\n")
outF.write("Correy: "+str(pertotalvote2)+"% ("+str(totalvote2)+")"+"\n")
outF.write("Li: "+str(pertotalvote3)+"% ("+str(totalvote3)+")"+"\n")
outF.write("O'Tooley: "+str(pertotalvote4)+"% ("+str(totalvote4)+")"+"\n")
outF.write("----------------------------------------------\n")
outF.write("Winner: "+Winnum+"\n")
outF.write("----------------------------------------------\n")    
#outF.write("Total Months: "+str(totalN)+"\n")
#outF.write("Total: $"+str(totalV)+"\n")
#outF.write("Average Change: $"+str(ave)+"\n")
#outF.write("Greatest Increase in Profits: "+str(maxInDate)+" ($"+str(maxIn)+")\n")
#outF.write("Greatest Decrease in Profits: "+str(maxDeDate)+" ($"+str(maxDe)+")\n")
outF.close()

 
