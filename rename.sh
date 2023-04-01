# rename files numerically
for dir in ./validation/*; do
    i=0
    for image in $dir/*.jpg; do
        ((i++))
        mv $image $dir/$i.jpg
    done
done
