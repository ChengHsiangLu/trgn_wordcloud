#!/usr/bin/bash

count=1
while IFS= read -r line; do
    wget -O "./current_pages/file${count}.html" $line
    html2text.py current_pages/file${count}.html >> my_current.txt
    ((count++))
done


wordcloud_cli --text my_current.txt --imagefile bbccnn.png

mv /home/clu74108/trgn_wordcloud/my_current.txt /home/clu74108/trgn_wordcloud/current_pages
mv /home/clu74108/trgn_wordcloud/bbccnn.png /home/clu74108/public_html
