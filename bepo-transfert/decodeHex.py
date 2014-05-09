import binascii

# This script is used in order to transform a text file containing an hexadecimal representation into a binary file

# Variables to configure
filenamein='P:/Bastien/Programmation/bepo-portable.txt'
filenameout='P:/Bastien/Programmation/bepo-portable.zip'

# Open the source file
f=open(filenamein,'r')
content=f.read()
f.close()

# Replace the carriage returns by their original values
content2=content.replace('\n','ff')

# Transform the hexadecimal representation into the binary representation
content3=binascii.unhexlify(content2)

# Write into the output file
o=open(filenameout,'wb')
o.write(content3)
o.close()