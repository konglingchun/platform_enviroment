#找出指定目录最大的n个文件
du -ak target_dir | sort -nrk 1 | head -n 6
# du中a为递归,k为kb；sort中n为数字,r为降序,k指定列

#统计tools_dev.sh单词次数
cat tools_dev.sh | tr -s "\t| " "\n" | sort | uniq -c | sort -k1,1nr

#统计代码行数
find . "(" -name "*.m" -or -name "*.mm" -or -name "*.c" -or -name "*.h" -or -name "*.xib" -or -name "*.pch" ")" -print | xargs grep -v "^$"|wc -l

