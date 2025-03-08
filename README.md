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

GATE Overflow PDFs are made from the contents of [GATE Overflow](https://gateoverflow.in) site which runs on [Q2A](https://www.question2answer.org/qa/) software. For making the PDFs from HTML we make use of the Open Source tool [wkhtmltopdf](https://wkhtmltopdf.org/). We also rely on this [wonderful plugin](https://github.com/GATEOverflow/q2a-book) from Noah to convert Q2A content to PDF. The PDF generation pipeline is automated via [MLCFlow](https://github.com/mlcommons/mlcflow).

## PDF generation
The below PDF generation command works only with access to the relevant HTML files. We'll soon share some sample HTML files for testing the pipeline.

```
pip install mlc-scripts
```
More detailed installation steps can be found [here](https://docs.mlcommons.org/mlcflow/install/)

```
mlc pull repo gateoverflow@go-pdfs
mlcr make,go,pdf,_go-cse,_vol1 --input=<path to the input HTML>
```
### Expected Output
```
(mlcflow) ubuntu@i-02bf0b78653d15de9:~/MLC/repos/gateoverflow@go-pdfs/script/get-wkhtmltopdf$ mlcr make,go,pdf,_go-cse,_vol1 --input=/home/ubuntu/go_books/gate_overflow_for_gate_cse/book_filter1_volume1.html
[2025-03-06 19:11:03,045 module.py:558 INFO] - * mlcr make,go,pdf,_go-cse,_vol1
[2025-03-06 19:11:03,057 module.py:558 INFO] -   * mlcr make,pdf,from-html,_go-cse,_vol1
[2025-03-06 19:11:03,064 module.py:558 INFO] -     * mlcr get,wkhtmltopdf,_with-qt
[2025-03-06 19:11:03,064 module.py:1270 INFO] -          ! load /home/ubuntu/MLC/repos/local/cache/get-wkhtmltopdf_1c609de0/mlc-cached-state.json
[2025-03-06 19:11:03,067 module.py:5329 INFO] -          ! cd /home/ubuntu/MLC/repos/gateoverflow@go-pdfs/script/get-wkhtmltopdf
[2025-03-06 19:11:03,067 module.py:5330 INFO] -          ! call /home/ubuntu/MLC/repos/gateoverflow@go-pdfs/script/make-pdf-from-html/run.sh from tmp-run.sh
Running:
wkhtmltopdf --javascript-delay 488000 -T 20mm -B 20mm --header-spacing 6   --title 'GATEOverflow for GATECSE' --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc  /home/ubuntu/go_books/gate_overflow_for_gate_cse/book_filter1_volume1.html  --enable-toc-back-links --zoom 0.7   /home/ubuntu/go_books/pdfs/filter1_volume1.pdf

Loading pages (1/6)

```
