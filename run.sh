#bash clean.sh
#bash 1-preprocess.sh
#bash 2-extract-feat.sh
#bash 3-train.sh
#bash 4-test.sh

for i in {1..30};
do
    bash clean.sh
    bash 1-preprocess.sh
    bash 2-extract-feat.sh
    bash 3-train.sh "$i"
    bash 4-test.sh  "$i"
done

