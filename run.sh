#!/bin/bash
root=$HOME/go_books
out=$root/pdfs

wkhtmltopdf --javascript-delay 1288000 -T 20mm -B 20mm --header-spacing 6   --title "GATE Overflow Book" --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc     $root/gate_overflow_for_gate_cse/book_filter7.html  --enable-toc-back-links --zoom 1.0   $out/std_books.pdf

wkhtmltopdf --javascript-delay 788000 -T 20mm -B 20mm --header-spacing 6   --title "GATE Overflow Book" --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc     $root/gate_overflow_for_gate_cse/book_filter6.html  --enable-toc-back-links --zoom 1.0   $out/ugcnet.pdf

wkhtmltopdf --javascript-delay 788000 -T 20mm -B 20mm --header-spacing 6   --title "GATE Overflow Book" --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc     $root/gate_overflow_for_gate_cse/book_filter5.html  --enable-toc-back-links --zoom 1.0   $out/tifr.pdf

wkhtmltopdf --javascript-delay 688000 -T 20mm -B 20mm --header-spacing 6   --title "GATE Overflow Book" --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc     $root/gate_overflow_for_gate_cse/book_filter4.html  --enable-toc-back-links --zoom 1.0   $out/nielit.pdf

wkhtmltopdf --javascript-delay 688000 -T 20mm -B 20mm --header-spacing 6   --title "GATE Overflow Book" --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc     $root/gate_overflow_for_gate_cse/book_filter2.html  --enable-toc-back-links --zoom 1.0   $out/isro.pdf
