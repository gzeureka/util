# convert a key,value csv to key=value&... format
awk -F, 'NR>1 {printf "&"}; {printf "%s=", $1}; {sub(/^[^,]*,/, ""); printf "%s", $0}; END {print ""}' x.txt
