import binascii

# This script is used in order to transform a binary file into a text file (in fact into its hexadecimal representation)

# Variables to configure
filenamein='P:/Bastien/Programmation/pkl-bepo.zip'
filenameout='P:/Bastien/Programmation/bepo-portable.txt'

# Open the source file
f=open(filenamein,'rb')
content=f.read()
f.close()

# Convert its content to hexadecimal
content2=binascii.hexlify(content)

# Insert carriage returns because the copy/paste functionality has performance problems with long lines
content3=content2.replace('ff','\n')

# Write the hexadecimal content in the output file
o=open(filenameout,'w')
o.write(content3)
o.close()
