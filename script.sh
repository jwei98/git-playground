COMMITS="$(git rev-list 0486acb34c870566eee8415b3d6c846baa7fdae6..0315b06eb07eb045f5216b14ef2a6f0d2dee10f8 --merges)"
while read -r hash; do
	INTO="$(git branch --contains $hash)"
	MSG="$(git log --format=%B -n 1 $hash)"
	echo "$hash:$INTO"
	echo "$MSG"
	echo "\n"
done <<< "$COMMITS"
