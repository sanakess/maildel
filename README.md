# maildel.sh
bash script for finding mail or another text files with different character encoding.

Find files in current folder and show them in bash.

dependencies
---


You need to install 
enca
base64
qprint

```
yum install qprint openssl enca -y
```

Usage
---
change "СЛОВО" in NAME="СЛОВО" to the world or phrase you need to find and type it lowercase in maildel.sh And run it:
```
chmod 750 maildel.sh
./maildel.sh
```
