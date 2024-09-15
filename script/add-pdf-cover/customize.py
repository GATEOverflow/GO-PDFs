from cmind import utils
import os

def preprocess(i):

    os_info = i['os_info']

    env = i['env']

    meta = i['meta']

    automation = i['automation']

    quiet = (env.get('CM_QUIET', False) == 'yes')

    cover_file = env['CM_PDF_COVER_PATH']
    pdf_file = env['CM_PDF_FILE_PATH']
    final_pdf_file = env.get('CM_PDF_OUTPUT_FILE_PATH', '')
    if final_pdf_file == '':
        final_pdf_file = os.path.join(os.getcwd(), f"final_{os.path.basename(pdf_file)}")

    cmd = f"""pdftk {cover_file} {pdf_file} cat output {final_pdf_file}"""

    env['CM_RUN_CMD'] = cmd

    return {'return':0}

def postprocess(i):

    env = i['env']

    return {'return':0}
