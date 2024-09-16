# GO-PDFs
From 2021 onwards all [PDFs](http://book.gateoverflow.in) of [GATE Overflow](https://gateoverflow.in) will be released here. 

Please check the [Releases](https://github.com/GATEOverflow/GO-PDFs/releases) for the latest PDFs.

We are planning the following PDFs.
1. [GATE Overflow for GATE CSE 2025, 2 volumes](https://github.com/GATEOverflow/GO-PDFs/releases/tag/gatecse-2025)
2. [TIFR CSE PDF](https://github.com/GATEOverflow/GO-PDFs/releases/tag/tifr)
3. [GATE Overflow for UGC NET CSE](https://github.com/GATEOverflow/GO-PDFs/releases/tag/ugcnet)
4. [GATE Overflow for ISRO CSE](https://github.com/GATEOverflow/GO-PDFs/releases/tag/isro)
5. [GATE Overflow for NIELIT Scientist A,B,C,D CSE](https://github.com/GATEOverflow/GO-PDFs/releases/tag/NIELIT)
6. [Aptitude Overflow](https://github.com/GATEOverflow/GO-PDFs/releases/tag/aptitude)

GATE Overflow PDFs are made from the contents of [GATE Overflow](https://gateoverflow.in) site which runs on [Q2A](https://www.question2answer.org/qa/) software. For making the PDFs from HTML we make use of the Open Source tool [wkhtmltopdf](https://wkhtmltopdf.org/). We also rely on this [wonderful plugin](https://github.com/GATEOverflow/q2a-book) from Noah to convert Q2A content to PDF. The PDF generation pipeline is automated via [CM](https://github.com/mlcommons/ck).

## PDF generation
The below PDF generation command works only with access to the relevant HTML files. We'll soon share some sample HTML files for testing the pipeline.

```
pip install cm4mlops
cm run script --tags=make,go,pdf,_go-cse,_vol1
```
### Expected Output
```
(cm) arjun@hp-envy:~/GO-PDFs$ cm run script --tags=make,go,pdf,_go-cse,_vol2
INFO:root:* cm run script "make go pdf _go-cse _vol2"
INFO:root:  * cm run script "make pdf from-html _go-cse _vol2"
INFO:root:    * cm run script "get wkhtmltopdf _with-qt"
INFO:root:         ! load /home/arjun/CM/repos/local/cache/eb6c5132d9eb4b8b/cm-cached-state.json
INFO:root:         ! cd /home/arjun/GO-PDFs
INFO:root:         ! call /home/arjun/GO-PDFs/script/make-pdf-from-html/run.sh from tmp-run.sh
Running: 
wkhtmltopdf --javascript-delay 8880000 -T 20mm -B 20mm --header-spacing 6   --title 'GATEOverflow for GATECSE' --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc  /home/arjun/go_books/gate_overflow_for_gate_cse/book_filter1_volume2.html  --enable-toc-back-links --zoom 1.0   /home/arjun/go_books/pdfs/filter1_volume2.pdf 

Loading pages (1/6)
Counting pages (2/6)                                               
Loading TOC (3/6)                                                           
Resolving links (4/6)                                              
Loading headers and footers (5/6)                                           
Printing pages (6/6)
[============================================================] Page 662 of 662

```
