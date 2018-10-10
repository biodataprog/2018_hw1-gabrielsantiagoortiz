#!/bin/bash
#1.
wget https://biodataprog.github.io/2018_programming-intro/data/Ecoli-vs-Yersinia.BLASTP.tab.gz
du -h Ecoli-vs-Yersinia.BLASTP.tab.gz

#2.
gunzip Ecoli-vs-Yersinia.BLASTP.tab.gz
du -h Ecoli-vs-Yersinia.BLASTP.tab

#3.
head -n 25 Ecoli-vs-Yersinia.BLASTP.tab
tail -n 3 Ecoli-vs-Yersinia.BLASTP.tab
wc Ecoli-vs-Yersinia.BLASTP.tab

#4.
wget https://biodataprog.github.io/2018_programming-intro/data/Nc3H.expr.tab
head -n 10 Nc20H.expr.sorted.tab && tail -n +2 Nc20H.expr.sorted.tab | sort -k 6 -n -r Nc3H.expr.tab > Nc20H.expr.sorted.tab

#5.
grep -c "    CDS" D_mel.63B12.gbk
awk '{ if ($3 == 100) { print } }' Ecoli-vs-Yersinia.BLASTP.tab
awk '{ if ($3 >= 90) { print } }' Ecoli-vs-Yersinia.BLASTP.tab

#6.
wget https://biodataprog.github.io/2018_programming-intro/data/codon_table.txt
sort -k 3 codon_table.txt | uniq -c
sort -k 3 codon_table.txt | uniq -c | cut -f2,3 | uniq -c



