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
#array=(100 200 300 400 500 600 700 800 900 1000 1100 1200)
#for i in "${array[@]}";
#do
##  echo "$i"
#    bash clean.sh
#    bash 1-preprocess.sh
#    bash 2-extract-feat.sh
#    bash 3-train.sh "$i"
#    bash 4-test.sh  "$i"
#done

# Best 400 98.50
##################################
##################################
# Experiment - iterations
array=(0.1 0.2 0.25 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.25 1.5 1.75 2)
for i in "${array[@]}";
do
  echo "$i"
    bash clean.sh
    bash 1-preprocess.sh
    bash 2-extract-feat.sh
    bash 3-train.sh
    bash 4-test.sh  "$i"
done

# Best 400 98.50
##################################