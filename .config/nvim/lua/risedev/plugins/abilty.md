clone
-----
        line or word

exchange
--------
 two words left <-> right
         or anything 34 rose $%^

move oxo oxo        
     oxo oxo        

dial weekday Sunday Monday Tuesday Wednesday Thursday Friday Saturday
             日     月     火      水        木       金     土

calculate 
        144 <= 12^2

sort

use bash filters or commands directly
-------------------------------------
generate random number
echo $((1 + $RANDOM % 100))
38

generate 10 random number
for r in {1..10}; do echo $((1+RANDOM%100)); done

generate random seq from 1-10 every number occurs one time
shuf -i 1-10 -n 10

generate random numbers between 1-10 numbers repeating
shuf -i 1-10 -n 10 -r 

generate sequnce from 1 to 9 first increment last
seq 9
seq 2 9
seq 2 2 9

shuffles 3 selected lines use it in visual mode
shuf -n 3 

This is super good shit xd
shuf
[e, d, b, a, f, c,]
sed 's/,/\n/g' > echo | sort | sed 's/\n/,/g'
[a, b, c, d, e, f,]
``` sed 's/, */\n/g'| grep -v '^$' | sort | sed -z 's/\n/, /g' ```
a,b,c,d,e,f,
