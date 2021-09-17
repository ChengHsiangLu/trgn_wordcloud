#!/usr/bin/bash

count=1
while IFS= read -r line; do
    wget -O "/home/clu74108/trgn_wordcloud/current_pages/file${count}.html" $line
    ~/bin/html2text.py /home/clu74108/trgn_wordcloud/current_pages/file${count}.html >> /home/clu74108/trgn_wordcloud/my_current.txt
    ((count++))
done


~/.local/bin/wordcloud_cli --text /home/clu74108/trgn_wordcloud/my_current.txt --imagefile /home/clu74108/trgn_wordcloud/bbccnn.png
mv /home/clu74108/trgn_wordcloud/bbccnn.png /home/clu74108/public_html/
