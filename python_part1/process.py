log_file = open("um-server-01.txt")
# the line above is saving the OPEN document instance to a varicable named log_file so it can be read/manipulated in the future 


def sales_reports(log_file): # creating a funciton
    for line in log_file: # starting a loop that will loop over each 'line' in the open document 'log_file'
        line = line.rstrip() # the rstrip() function removes any trailing characters that are indicated in the parameters. If none are indicated, it will default to spaces
        day = line[0:3] # this will view the line as a list and will create the range for the array
        if day == "Mon": # checking for the key value being labeled as 'day' and if it is a match it will execute code
            print(line) # printing a line in the txt document that matched the key value above
# there is nothing here.
sales_reports(log_file) # calling the function created above passing in the open file variable declared at the top



# EXTRA CREDIT
print(" ")
print(" ")

log_file.seek(0,0)

def exceptional_deliveries(log_file):
    for line in log_file:
        line = line.rstrip()
        line = line.split(' ')

        if int(line[2]) > 10:
            print(" ".join(line))

exceptional_deliveries(log_file)



