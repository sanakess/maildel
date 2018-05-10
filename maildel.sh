#!/bin/bash
#search world
NAME="СЛОВО"
#1st lowercase
NAME_1LOWER="$NAME"
#1st uppercase
NAME_1UPPER=`echo "$NAME" | sed 's/.*/\u&/'`
#debug
echo "NAME_1LOWER:$NAME"

#text to utf-8 Uppercase
NAME_1UPPER_UTF=`echo "$NAME_1UPPER" | enca -L ru -x utf-8`
#add quoted-printable encoding
NAME_1UPPER_QUOT_UTF=`echo "$NAME_1UPPER" | enca -L ru -x utf-8 | qprint -e`
#add base64 encoding
NAME_1UPPER_BASE64_UTF=`echo -n "$NAME_1UPPER" | enca -L ru -x utf-8 | base64 | sed 's/.\{5\}$//'`

#text to utf-8 Lowercase 
NAME_1LOWER_UTF=`echo "$NAME_1LOWER" | enca -L ru -x utf-8`
NAME_1LOWER_QUOT_UTF=`echo "$NAME_1LOWER" | enca -L ru -x utf-8 | qprint -e`
NAME_1LOWER_BASE64_UTF=`echo -n "$NAME_1LOWER" | enca -L ru -x utf-8 | base64 | sed 's/.\{5\}$//'`


###
#text to koi8-r Uppercase
NAME_1UPPER_KOI=`echo "$NAME_1UPPER" | enca -L ru -x koi8-r`
NAME_1UPPER_QUOT_KOI=`echo "$NAME_1UPPER" | enca -L ru -x koi8-r | qprint -e`
NAME_1UPPER_BASE64_KOI=`echo -n "$NAME_1UPPER" |enca -L ru -x koi8-r | base64 | sed 's/.\{5\}$//'`

#text to koi8-r Lowercase
NAME_1LOWER_KOI=`echo "$NAME_1LOWER" | enca -L ru -x koi8-r`
NAME_1LOWER_QUOT_KOI=`echo "$NAME_1LOWER" | enca -L ru -x koi8-r | qprint -e`
NAME_1LOWER_BASE64_KOI=`echo -n "$NAME_1LOWER" |enca -L ru -x koi8-r | base64 | sed 's/.\{5\}$//'`


###
#text to CP1251 Uppercase
NAME_1UPPER_CP1251=`echo "$NAME_1UPPER" | enca -L ru -x CP1251`
NAME_1UPPER_QUOT_CP1251=`echo "$NAME_1UPPER" | enca -L ru -x CP1251 | qprint -e`
NAME_1UPPER_BASE64_CP1251=`echo -n "$NAME_1UPPER" |enca -L ru -x CP1251 | base64 | sed 's/.\{5\}$//'`

#text to CP1251 Lowercase
NAME_1LOWER_CP1251=`echo "$NAME_1LOWER" | enca -L ru -x CP1251`
NAME_1LOWER_QUOT_CP1251=`echo "$NAME_1LOWER" | enca -L ru -x CP1251 | qprint -e`
NAME_1LOWER_BASE64_CP1251=`echo -n "$NAME_1LOWER" |enca -L ru -x CP1251 | base64 | sed 's/.\{5\}$//'`


###
#text to ISO-8859-5 Uppercase
NAME_1UPPER_ISO=`echo "$NAME_1UPPER" | enca -L ru -x ISO-8859-5 `
NAME_1UPPER_QUOT_ISO=`echo "$NAME_1UPPER" | enca -L ru -x ISO-8859-5 | qprint -e`
NAME_1UPPER_BASE64_ISO=`echo -n "$NAME_1UPPER" |enca -L ru -x ISO-8859-5  | base64 | sed 's/.\{5\}$//'`

#text to ISO-8859-5 Lowercase
NAME_1LOWER_ISO=`echo "$NAME_1LOWER" | enca -L ru -x ISO-8859-5`
NAME_1LOWER_QUOT_ISO=`echo "$NAME_1LOWER" | enca -L ru -x ISO-8859-5 | qprint -e`
NAME_1LOWER_BASE64_ISO=`echo -n "$NAME_1LOWER" |enca -L ru -x ISO-8859-5  | base64 | sed 's/.\{5\}$//'`


###
#text to IBM866 Uppercase
NAME_1UPPER_IBM=`echo "$NAME_1UPPER" | enca -L ru -x IBM866`
NAME_1UPPER_QUOT_IBM=`echo "$NAME_1UPPER" | enca -L ru -x IBM866 | qprint -e`
NAME_1UPPER_BASE64_IBM=`echo -n "$NAME_1UPPER" |enca -L ru -x IBM866 | base64 | sed 's/.\{5\}$//'`

#text to IBM866 Lowercase
NAME_1LOWER_IBM=`echo "$NAME_1LOWER" | enca -L ru -x IBM866`
NAME_1LOWER_QUOT_IBM=`echo "$NAME_1LOWER" | enca -L ru -x IBM866 | qprint -e`
NAME_1LOWER_BASE64_IBM=`echo -n "$NAME_1LOWER" |enca -L ru -x IBM866 | base64 | sed 's/.\{5\}$//'`


###
#command
grep -r \
-e "$NAME_1UPPER_KOI" -e "$NAME_1UPPER_QUOT_KOI" -e "$NAME_1LOWER_KOI" -e "$NAME_1LOWER_QUOT_KOI" -e "$NAME_1LOWER_BASE64_KOI" -e "$NAME_1UPPER_BASE64_UTF" -e "$NAME_1LOWER_BASE64_UTF" \
-e "$NAME_1UPPER_CP1251" -e "$NAME_1UPPER_QUOT_CP1251" -e "$NAME_1LOWER_CP1251" -e "$NAME_1LOWER_QUOT_CP1251" -e "$NAME_1LOWER_BASE64_CP1251" -e "$NAME_1UPPER_BASE64_CP1251" -e "$NAME_1LOWER_BASE64_CP1251" \
-e "$NAME_1UPPER_ISO" -e "$NAME_1UPPER_QUOT_ISO" -e "$NAME_1LOWER_ISO" -e "$NAME_1LOWER_QUOT_ISO" -e "$NAME_1LOWER_BASE64_ISO" -e "$NAME_1UPPER_BASE64_ISO" -e "$NAME_1LOWER_BASE64_ISO" \
-e "$NAME_1UPPER_IBM" -e "$NAME_1UPPER_QUOT_IBM" -e "$NAME_1LOWER_IBM" -e "$NAME_1LOWER_QUOT_IBM" -e "$NAME_1LOWER_BASE64_IBM" -e "$NAME_1UPPER_BASE64_IBM" -e "$NAME_1LOWER_BASE64_IBM" \
./ 
#> ./del.txt


#cat ./del.txt | while read in; do mv "$in" ./delete/; done
