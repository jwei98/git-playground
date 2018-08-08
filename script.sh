COMMITS="$(git rev-list 0486acb34c870566eee8415b3d6c846baa7fdae6..c20138be931d51e3c4e399f456cfba36e5258f13 --merges)"
while read -r hash; do
	INTO="$(git branch --contains $hash)"
	MSG="$(git log --format=%B -n 1 $hash)"
	echo "$hash:$INTO"
	echo "$MSG"
done <<< "$COMMITS"
