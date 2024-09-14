#!/bin/bash

#CM Script location: ${CM_TMP_CURRENT_SCRIPT_PATH}

#To export any variable
#echo "VARIABLE_NAME=VARIABLE_VALUE" >>tmp-run-env.out

#${CM_PYTHON_BIN_WITH_PATH} contains the path to python binary if "get,python" is added as a dependency

echo "Running: "
echo "${CM_RUN_CMD}"
echo ""

if [[ ${CM_FAKE_RUN} != "yes" ]]; then
  eval "${CM_RUN_CMD}"
  test $? -eq 0 || exit 1
fi

#root=$HOME/go_books
#out=$root/pdfs

#wkhtmltopdf --javascript-delay 488000 -T 20mm -B 20mm --header-spacing 6   --title "GATE Overflow Book" --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc     $root/gate_overflow_for_gate_cse/book_filter1_volume1.html  --enable-toc-back-links --zoom 1.0 --header-html header.html --footer-html footer.html  $out/filter1_volume1.pdf
#wkhtmltopdf --javascript-delay ${CM_GO_PDF_JS_DELAY} -T 20mm -B 20mm --header-spacing 6   --title ${CM_GO_PDF_TITLE} --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc     $root/gate_overflow_for_gate_cse/${CM_GO_HTML_NAME}  --enable-toc-back-links --zoom 1.0   $out/${CM_GO_PDF_NAME}
#wkhtmltopdf --javascript-delay 688000 -T 20mm -B 20mm --header-spacing 6   --title "GATE Overflow Book" --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc     $root/gate_overflow_for_gate_cse/book_filter1_volume2.html  --enable-toc-back-links --zoom 1.0   $out/filter1_volume2.pdf

