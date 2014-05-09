import binascii

filenamein='P:/Bastien/Programmation/pkl-bepo.zip'
filenameout='P:/Bastien/Programmation/b.txt'

f=open(filenamein,'rb')
content=f.read()
print(len(content))
f.close()
content2=binascii.hexlify(content)
#content3=content2.split('ff')
content3=content2.replace('ff','\n')
print(len(content2))
print(len(content3))
o=open(filenameout,'w')
#o.writelines(content3)
#o.write(content2)
#for x in content3:
#  o.write(x + '\n')
o.write(content3)
o.close()
