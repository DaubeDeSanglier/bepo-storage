import binascii

filenamein='P:/Bastien/Programmation/b.txt'
filenameout='P:/Bastien/Programmation/z.zip'

f=open(filenamein,'r')
content=f.read()
print(len(content))
f.close()
content2=content.replace('\n','ff')
content3=binascii.unhexlify(content2)
o=open(filenameout,'wb')
o.write(content3)
o.close()