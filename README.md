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
