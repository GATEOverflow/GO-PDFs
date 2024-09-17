from cmind import utils
import os

def preprocess(i):

    os_info = i['os_info']

    env = i['env']

    meta = i['meta']

    automation = i['automation']

    quiet = (env.get('CM_QUIET', False) == 'yes')

    env['CM_ROOT_PATH'] = os.path.join(os.path.expanduser("~"), "go_books")
    env['CM_PDF_PATH'] = os.path.join(env['CM_ROOT_PATH'], "pdfs")

    cmd = f"""wkhtmltopdf --javascript-delay {env['CM_GO_PDF_JS_DELAY']} -T 20mm -B 20mm --header-spacing 6   --title '{env['CM_GO_PDF_TITLE']}' --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc  {os.path.join(env['CM_ROOT_PATH'], env['CM_GO_HTML_FOLDER_NAME'], env['CM_GO_HTML_FILE_NAME'])}  --enable-toc-back-links --zoom {env['CM_GO_PDF_SCALE']}   {os.path.join(env['CM_PDF_PATH'],env['CM_GO_PDF_NAME'])} """

    env['CM_RUN_CMD'] = cmd

    return {'return':0}

def postprocess(i):

    env = i['env']

    return {'return':0}
