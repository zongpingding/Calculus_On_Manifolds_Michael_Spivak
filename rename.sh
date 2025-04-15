for f in *.tex; do
    newname="${f// /_}"
    mv "$f" "$newname"
done