./svm-train -c 256 -n 0.99999 -s 2 -t 2 data/points_2
mv points_2* data/
./svm-predict data/points_2 data/points_2.model data/points_2.out
cd data
python ../collect_data.py points_2 points_2.model points_2.out
