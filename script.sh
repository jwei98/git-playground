COMMITS="$(git rev-list 0486acb34c870566eee8415b3d6c846baa7fdae6..a31322b59b983b8eb0c8eaeb8d4b5a82705c76e2 --merges)"
while read -r hash; do
	INTO="$(git branch --contains $hash)"
	MSG="$(git log --format=%B -n 1 $hash)"
	echo "$hash:$INTO"
	echo "$MSG"
done <<< "$COMMITS"
