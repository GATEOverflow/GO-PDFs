#!/bin/bash
root=$HOME/go_books
out=$root/pdfs
wkhtmltopdf --javascript-delay 1188000 -T 20mm -B 20mm --header-spacing 6   --title "GATE Overflow Book" --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc     $root/gate_overflow_for_gate_cse/book_filter3_volume1.html  --enable-toc-back-links --zoom 1.0   $out/filter3_volume1.pdf
wkhtmltopdf --javascript-delay 1188000 -T 20mm -B 20mm --header-spacing 6   --title "GATE Overflow Book" --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc     $root/gate_overflow_for_gate_cse/book_filter3_volume2.html  --enable-toc-back-links --zoom 1.0   $out/filter3_volume2.pdf
wkhtmltopdf --javascript-delay 1188000 -T 20mm -B 20mm --header-spacing 6   --title "GATE Overflow Book" --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc     $root/gate_overflow_for_gate_cse/book_filter3_volume3.html  --enable-toc-back-links --zoom 1.0   $out/filter3_volume3.pdf
