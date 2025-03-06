from mlc import utils
import os

def preprocess(i):

    os_info = i['os_info']

    env = i['env']

    meta = i['meta']

    automation = i['automation']

    quiet = (env.get('MLC_QUIET', False) == 'yes')

    env['MLC_ROOT_PATH'] = os.path.join(os.path.expanduser("~"), "go_books")
    env['MLC_PDF_PATH'] = os.path.join(env['MLC_ROOT_PATH'], "pdfs")

    html_file_path = env.get('MLC_HTML_FILE_PATH', os.path.join(env['MLC_ROOT_PATH'], env['MLC_GO_HTML_FOLDER_NAME'], env['MLC_GO_HTML_FILE_NAME']))

    if not os.path.exists(html_file_path):
        return {'return': 1, 'error': f"""File {html_file_path} is not existing. Please provide a valid path for the input HTML file"""}

    if not os.path.exists(env['MLC_PDF_PATH']):
        os.makedirs(env['MLC_PDF_PATH'])

    cmd = f"""wkhtmltopdf --javascript-delay {env['MLC_GO_PDF_JS_DELAY']} -T 20mm -B 20mm --header-spacing 6   --title '{env['MLC_GO_PDF_TITLE']}' --no-stop-slow-scripts   --load-error-handling ignore  --enable-local-file-access   toc  {html_file_path}  --enable-toc-back-links --zoom {env['MLC_GO_PDF_SCALE']}   {os.path.join(env['MLC_PDF_PATH'],env['MLC_GO_PDF_NAME'])} """

    env['MLC_RUN_CMD'] = cmd

    return {'return':0}

def postprocess(i):

    env = i['env']
    out_file_path = os.path.join(env['MLC_PDF_PATH'],env['MLC_GO_PDF_NAME'])
    print("""PDF file generated at {out_file_path}""")

    return {'return':0}
