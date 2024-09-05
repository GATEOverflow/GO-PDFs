#!/bin/bash
/usr/bin/rclone copy go:go_books .
bash run2.sh
pdftk vol1-cover.pdf $HOME/go_books/pdfs/filter1_volume1.pdf cat output volume1.pdf
pdftk vol2-cover.pdf $HOME/go_books/pdfs/filter1_volume2.pdf cat output volume2.pdf
bash upload_release.sh

