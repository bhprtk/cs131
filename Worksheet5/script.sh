#!/bin/bash
IFS=$'\n'
us="United States"
for line in `cat youtube.csv`;
do
	if echo "$line" | grep -q  "United States"; then
		category=`echo "$line" | cut -d "," -f5`
		if [[ "$category" == "Music" ]] || [[ "$category" == "Entertainment" ]] || [[ "$category" == "Gaming" ]] || [[ "$category" == "Comedy" ]]; then
			echo "$line" >> "${us}/${category}.txt"
		fi

	fi
done
