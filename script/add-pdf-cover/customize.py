from mlc import utils
import os
from utils import *

def preprocess(i):

    os_info = i['os_info']

    env = i['env']

    meta = i['meta']

    automation = i['automation']

    quiet = (env.get('MLC_QUIET', False) == 'yes')

    cover_file = env['MLC_PDF_COVER_PATH']
    pdf_file = env['MLC_PDF_FILE_PATH']
    final_pdf_file = env.get('MLC_PDF_OUTPUT_FILE_PATH', '')
    if final_pdf_file == '':
        final_pdf_file = os.path.join(os.getcwd(), f"final_{os.path.basename(pdf_file)}")


    if is_true(env.get('MLC_GO_PDF_WITH_ANSWERS')) and "answers" not in final_pdf_file:
        final_pdf_file = final_pdf_file.replace(".pdf", "_with_answers.pdf")

    cmd = f"""pdftk {cover_file} {pdf_file} cat output {final_pdf_file}"""

    env['MLC_RUN_CMD'] = cmd

    return {'return':0}

def postprocess(i):

    env = i['env']

    return {'return':0}
