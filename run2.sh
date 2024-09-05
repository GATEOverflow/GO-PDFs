#!/bin/bash
root=$HOME/go_books
out=$root/pdfs
#wkhtmltopdf --javascript-delay 488000 -T 20mm -B 20mm --header-spacing 6   --title "GATE Overflow Book" --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc     $root/gate_overflow_for_gate_cse/book_filter1_volume1.html  --enable-toc-back-links --zoom 1.0 --header-html header.html --footer-html footer.html  $out/filter1_volume1.pdf
wkhtmltopdf --javascript-delay 488000 -T 20mm -B 20mm --header-spacing 6   --title "GATE Overflow Book" --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc     $root/gate_overflow_for_gate_cse/book_filter1_volume1.html  --enable-toc-back-links --zoom 1.0   $out/filter1_volume1.pdf
wkhtmltopdf --javascript-delay 688000 -T 20mm -B 20mm --header-spacing 6   --title "GATE Overflow Book" --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc     $root/gate_overflow_for_gate_cse/book_filter1_volume2.html  --enable-toc-back-links --zoom 1.0   $out/filter1_volume2.pdf
#wkhtmltopdf --javascript-delay 688000 -T 20mm -B 20mm --header-spacing 6   --title "GATE Overflow Book" --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc     $root/gate_overflow_for_gate_cse/book_filter1_volume3.html  --enable-toc-back-links --zoom 1.0   $out/filter1_volume3.pdf
