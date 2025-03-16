from mlc import utils
import os
import subprocess


def preprocess(i):

    env = i['env']
    state = i['state']

    os_info = i['os_info']

    pdf_root = os.path.dirname(env['MLC_PDF_FILE_PATH'])

    env['MLC_RUN_CMD'] = f"""rclone sync {pdf_root} go-pdfs-out:"""
    return {'return': 0}


def postprocess(i):

    env = i['env']
    state = i['state']

    env['MLC_GO_PDFS_OUT'] = os.path.join(os.getcwd(), 'go-pdfs-out')
    env['MLC_DEPENDENT_CACHED_PATH'] = env['MLC_GO_PDFS_OUT']

    os_info = i['os_info']

    return {'return': 0}
