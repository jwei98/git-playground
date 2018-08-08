START=0486acb34c870566eee8415b3d6c846baa7fdae6
END=042049fc72447d2d8e7e05b09320b9bcc2428185
COMMITS="$(git rev-list $START..$END --merges)"

while read -r hash; do
	MSG="$(git log --format=%B -n 1 $hash)"
	echo "$hash:"
	echo "$MSG"
	echo "\n"
done <<< "$COMMITS"
