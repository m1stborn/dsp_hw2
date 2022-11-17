#bash clean.sh
#bash 1-preprocess.sh
#bash 2-extract-feat.sh
#bash 3-train.sh
#bash 4-test.sh

##################################
# Experiment - iterations

#for i in {1..30};
#do
#    bash clean.sh
#    bash 1-preprocess.sh
#    bash 2-extract-feat.sh
#    bash 3-train.sh "$i"
#    bash 4-test.sh  "$i"
#done

# Best: 26 98.39
##################################
##################################
# Experiment - iterations
array=(100 200 300 400 500 600 700 800 900 1000 1100 1200)
for i in "${array[@]}";
do
#  echo "$i"
    bash clean.sh
    bash 1-preprocess.sh
    bash 2-extract-feat.sh
    bash 3-train.sh "$i"
    bash 4-test.sh  "$i"
done

# Best 400 98.50
##################################
##################################