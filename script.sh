COMMITS="$(git rev-list 0b7fa80d6cbcf8b2ba256bd619b63c2be30bea44..5b4b6edd2356a82297c6595904b860f38c442fb6 --merges)"
while read -r hash; do
	INTO="$(git branch --contains $hash)"
	MSG="$(git log --format=%B -n 1 $hash)"
	echo "$hash:$INTO"
	echo "$MSG"
done <<< "$COMMITS"
