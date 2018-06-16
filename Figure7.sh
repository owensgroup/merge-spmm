bin/gbgemm --nrows=100000 --ncols=20000
bin/gbgemm --nrows=20000 --ncols=100000
echo filename, num_rows, num_cols, num_nonzeros, row_length_mean, row_length_std_dev, row_length_variation, row_length_skewness, small, big, method1, avg_ms, gflops, gbps, method2, avg_ms, gflops, gbps
for file in /data/ctcyang/GraphBLAS/dataset/europar/matrix/*/
do
  folder=$(basename $file)
    bin/gbspmm /data/ctcyang/GraphBLAS/dataset/europar/matrix/$folder/$folder.mtx
done
