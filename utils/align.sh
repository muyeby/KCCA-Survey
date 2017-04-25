#!/bin/sh
export Frdict="/home/xfbai/corpus/Bilingual_dict/parallel.fwdxbwd-dict.fr-en"
export Zhdict="/home/xfbai/corpus/Bilingual_dict/google_dict.zh-en"
export Dedict="/home/xfbai/corpus/Bilingual_dict/parallel.fwdxbwd-dict.de-en"
export Fidict="/home/xfbai/corpus/Bilingual_dict/parallel.fwdxbwd-dict.fi-en"
export Hudict="/home/xfbai/corpus/Bilingual_dict/parallel.fwdxbwd-dict.hu-en"
export Csdict="/home/xfbai/corpus/Bilingual_dict/parallel.fwdxbwd-dict.cs-en"
export Ardict="/home/xfbai/corpus/Bilingual_dict/google_dict.ar-en"
export Rudict="/home/xfbai/corpus/Bilingual_dict/google_dict.ru-en"

export Frvec="/home/xfbai/tmpvec/new_embedding_size200.fr"
export Zhvec="/home/xfbai/tmpvec/new_embedding_size200.zh"
export Devec="/home/xfbai/tmpvec/new_embedding_size200.de"
export Fivec="/home/xfbai/tmpvec/new_embedding_size200.fi"
export Huvec="/home/xfbai/tmpvec/new_embedding_size200.hu"
export Csvec="/home/xfbai/tmpvec/new_embedding_size200.cs"
export Arvec="/home/xfbai/tmpvec/new_embedding_size200.ar"
export Ruvec="/home/xfbai/tmpvec/new_embedding_size200.ru"

export Envec="/home/xfbai/tmpvec/new_embedding_size200.en"

export FrWord="/home/xfbai/tmpvec/fr_wordCount.txt"
export ZhWord="/home/xfbai/tmpvec/zh_wordCount.txt"
export EnWord="/home/xfbai/tmpvec/en_wordCount.txt"
export DeWord="/home/xfbai/tmpvec/de_wordCount.txt"
export FiWord="/home/xfbai/tmpvec/fi_wordCount.txt"
export HuWord="/home/xfbai/tmpvec/hu_wordCount.txt"
export CsWord="/home/xfbai/tmpvec/cs_wordCount.txt"
export ArWord="/home/xfbai/tmpvec/ar_wordCount.txt"
export RuWord="/home/xfbai/tmpvec/ru_wordCount.txt"
set -e
echo "Aligning vectors..."
python alignVectors.py -w1 $Ruvec -w2 $Envec -w3 $RuWord -w4 $EnWord -a $Rudict -o Out
